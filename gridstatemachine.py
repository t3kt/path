import tekt
import statemachines
from statemachines import Connection, State, dbglog
import td


smachine = None
schooser = None
sconnections = None

def init(force=False):
	global smachine
	global sconnections
	sm = me.fetch('smachine', None)
	dbglog('existing state machine found: %s' % (smachine is not None, ))
	if smachine is None or force:
		dbglog('loading new state machine')
		settings = op("define")
		pointgroups = ops(settings['pointgrouppath', 1].val)
		states = loadEnvironmentStates(pointgroups, op(settings['animtakepath', 1].val))
		buildStateDumpTable(op('states_dump'))
		buildConnectionDumpTable(op('connections_dump'))
		if len(states) > 0:
			startName = list(states.keys())[0]
		else:
			startName = None
		smachine = sm = statemachines.StateMachine(states=states, startName=startName)
		sconnections = None
		me.unstoreStartupValue('*')
		me.unstore('*')
	me.storeStartupValue('smachine', sm)
	dbglog('putting states in storage (%s)' % (', '.join(sm.states.keys()),))
	for state in sm.states.values():
		me.store(state.name, state)
	# if len(sm.states) > 0:
	# 	td.run('mod.gridstatemachine.setCurrent(' + repr(sm.states.keys()[0]) + ')', delayFrames=1)


def get(check=False):
	if smachine is not None:
		return smachine
	sm = me.fetch('smachine', None)
	if sm is None and check:
		raise Exception('statemachine not found')
	return sm

def getAllConnections():
	global sconnections
	if sconnections is None:
		sm = get()
		if sm is None:
			return None
		sconnections = list(sm.getAllConnections())
	return sconnections

def setCurrent(name):
	sm = get(check=True)
	dbglog('trying to set state to "%s"' % (name,))
	state = sm.setCurrent(name=name)
	me.store('current', state.props if state is not None else None)
	me.cook(force=True)


def followNext():
	sm = get(check=True)
	nextState = sm.followNext()
	if nextState is None:
		dbglog('unable to pick a connection')
	else:
		me.cook(force=True)
		dbglog('picked connection to "%s"' % (nextState.name,))


def setNoRepeat(norepeat):
	global schooser
	sm = get()
	if norepeat:
		schooser = statemachines.NoRepeatChooser()
	else:
		schooser = statemachines.RandomChooser()
	if sm is None:
		return
	sm.setChooser(schooser)


def buildCurrentStateTable(dat):
	dat.clear()
	dat.appendRow(['name', 'x', 'y', 'z'])
	sm = get()
	if sm is None or sm.current is None:
		return
	tekt.appendDictRow(dat, sm.current.props)


def buildConnectionDumpTable(dat):
	dat.clear()
	dat.appendRow(['source', 'target'])
	sm = get()
	if sm is None:
		return
	for state in sm.states.values():
		for conn in state.connections.values():
			dat.appendRow([state.name, conn.target.name])

def buildStateDumpTable(dat):
	dat.clear()
	dat.appendRow(['name', 'x', 'y', 'z'])
	sm = get()
	if sm is None:
		return
	for state in sm.states.values():
		tekt.appendDictRow(dat, state.props)


def buildPointDisplayTable(dat, currentColor, availableColor, inactiveColor):
	dat.clear()
	dat.appendRow(['name', 'available', 'current', 'x', 'y', 'z', 'r', 'g', 'b', 'a'])
	sm = get()
	if sm is None or sm.current is None:
		return
	for state in sm.states.values():
		props = dict(state.props)
		available = state.name in sm.current.connections
		iscurrent = state.name == sm.current.name
		if iscurrent:
			color = currentColor
		elif available:
			color = availableColor
		else:
			color = inactiveColor
		props['available'] = 1 if available else 0
		props['current'] = 1 if iscurrent else 0
		props['r'], props['g'], props['b'], props['a'] = color
		tekt.appendDictRow(dat, props)

def buildConnectionDisplayTable(dat, availableColor, inactiveColor):
	dat.clear()
	dat.appendRow(['srcx', 'srcy', 'srcz', 'tgtx', 'tgty', 'tgtz', 'available', 'r', 'g', 'b', 'a'])
	sm = get()
	if sm is None or sm.current is None:
		return
	for conn in getAllConnections():
		available = sm.current is not None and conn.source.name == sm.current.name
		color = availableColor if available else inactiveColor
		srcprops = conn.source.props
		tgtprops = conn.target.props
		props = {}
		props['srcx'], props['srcy'], props['srcz'] = srcprops['x'], srcprops['y'], srcprops['z']
		props['tgtx'], props['tgty'], props['tgtz'] = tgtprops['x'], tgtprops['y'], tgtprops['z']
		props['available'] = 1 if available else 0
		props['r'], props['g'], props['b'], props['a'] = color
		tekt.appendDictRow(dat, props)

#####
#	load all the state points into a dict( name   -> state )
#	load all the state points into a dict( coords -> state )
#	for each connection path:
#		for each point:
#			if there are state points at point and previous point
#				add a connection between them
#####


DBG_pointLookup = None
def loadEnvironmentStates(pointGroups, animData):
	global DBG_pointLookup
	states = {}
	pointLookup = {}
	DBG_pointLookup = pointLookup
	for ptGroup in pointGroups:
		for obj in ptGroup.children:
			if obj.type != 'null':
				continue
			state = State({
				'name': obj.name,
				'x': obj.par.tx.val,
				'y': obj.par.ty.val,
				'z': obj.par.tz.val
			})
			states[state.name] = state
			pointLookup[(int(state.props['x']), int(state.props['y']), int(state.props['z']))] = state
	print('point lookup: ', pointLookup)
	for xchan in animData.chans('*:tx'):
		ychan, zchan = animData.chans(xchan.name[:-1] + '[yz]')
		positions = list(zip(xchan.vals, ychan.vals, zchan.vals))
		#positions = [(int(round(pos[0])), int(round(pos[1])), int(round(pos[2]))) for pos in positions if pos in pointLookup]
		positions = [pos for pos in positions if pos in pointLookup]
		print('loading path channels: %s' % (xchan.name[:-1] + '[xyz]',))
		for i in range(1, len(positions)):
			posA = positions[i - 1]
			posA = int(posA[0]), int(posA[1]), int(posA[2])
			posB = positions[i]
			posB = int(posB[0]), int(posB[1]), int(posB[2])
			if posA == posB:
				continue
			print('loading position pair: %s <-> %s' % (posA, posB))
			stateA, stateB = pointLookup.get(posA, None), pointLookup.get(posB, None)
			if stateA is None:
				print('state not found at %s' % (posA,))
				continue
			if stateB is None:
				print('state not found at %s' % (posB,))
				continue
			print('states found: %s, %s' % (stateA, stateB))
			connAB = Connection(stateA, stateB, {})
			connBA = Connection(stateB, stateA, {})
			stateA.addConnection(connAB)
			stateB.addConnection(connBA)
	return states

