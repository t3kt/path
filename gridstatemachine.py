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
		conngroups = ops(settings['connectgrouppath', 1].val)
		scaling = float(settings["scaling", 1].val)
		states = loadEnvironmentStates(pointgroups, conngroups, scaling)
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
	dat.appendRow(['name', 'gridx', 'gridy', 'gridz', 'rawx', 'rawy', 'rawz'])
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
	dat.appendRow(['name', 'gridx', 'gridy', 'gridz', 'rawx', 'rawy', 'rawz'])
	sm = get()
	if sm is None:
		return
	for state in sm.states.values():
		tekt.appendDictRow(dat, state.props)


def buildPointDisplayTable(dat, currentColor, availableColor, inactiveColor):
	dat.clear()
	dat.appendRow(['name', 'available', 'current', 'rawx', 'rawy', 'rawz', 'r', 'g', 'b', 'a'])
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
		props['srcx'], props['srcy'], props['srcz'] = srcprops['rawx'], srcprops['rawy'], srcprops['rawz']
		props['tgtx'], props['tgty'], props['tgtz'] = tgtprops['rawx'], tgtprops['rawy'], tgtprops['rawz']
		props['available'] = 1 if available else 0
		props['r'], props['g'], props['b'], props['a'] = color
		tekt.appendDictRow(dat, props)

#####
#	load all the state points into a dict( name   -> state )
#	load all the state points into a dict( coords -> state )
#	for each connection point:
#		for each axis:
#			if there are state points at +scaling and -scaling
#				add a connection between them
#####

def _tupleAdd(a, b):
	return tuple(x[0] + x[1] for x in zip(a, b))

def _tupleMult(a, b):
	return tuple(x[0] * x[1] for x in zip(a, b))

def loadEnvironmentStates(pointGroups, connectionGroups, scaling):
	states = {}
	pointLookup = {}
	for ptGroup in pointGroups:
		for obj in ptGroup.children:
			if obj.type != 'null':
				continue
			state = State({
				'name': obj.name,
				'gridx': int(obj.par.tx / scaling),
				'gridy': int(obj.par.ty / scaling),
				'gridz': int(obj.par.tz / scaling),
				'rawx': obj.par.tx.val,
				'rawy': obj.par.ty.val,
				'rawz': obj.par.tz.val
			})
			states[state.name] = state
			pointLookup[(obj.par.tx.val, obj.par.ty.val, obj.par.tz.val)] = state
		halfScale = scaling / 2
		axes = (
			((-halfScale, 0, 0), (halfScale, 0, 0)),
			((0, -halfScale, 0), (0, halfScale, 0, 0)),
			((0, 0, -halfScale), (0, 0, halfScale))
		)
	for conGroup in connectionGroups:
		for obj in conGroup.children:
			if obj.type != 'null':
				continue
			connpos = (obj.par.tx.val, obj.par.ty.val, obj.par.tz.val)
			for axis in axes:
				stateA = pointLookup.get(_tupleAdd(axis[0], connpos), None)
				if stateA is None:
					continue
				stateB = pointLookup.get(_tupleAdd(axis[1], connpos), None)
				if stateB is None:
					continue
				connAB = Connection(stateA, stateB, {})
				connBA = Connection(stateB, stateA, {})
				stateA.addConnection(connAB)
				stateB.addConnection(connBA)
	return states

def dumpToTables(states, pointsTbl, connectionsTbl):
	pointsTbl.clear()
	pointsTbl.appendRow(['name', 'gridx', 'gridy', 'gridz', 'rawx', 'rawy', 'rawz'])
	connectionsTbl.clear()
	connectionsTbl.appendRow(['source', 'target'])
	for state in states.values():
		tekt.appendDictRow(pointsTbl, state.props)
		for connection in state.connections.values():
			connectionsTbl.appendRow([connection.source.name, connection.target.name])

