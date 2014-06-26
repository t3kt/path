import tekt
import statemachines
from statemachines import Connection, State, dbglog

smachine = None

def init(force=False):
	global smachine
	smachine = me.fetch('smachine', None)
	dbglog('existing state machine found: %s' % (smachine is not None, ))
	if smachine is None or force:
		smachine = statemachines.StateMachine(statetbl=op('intersectiontbl'), conntbl=op('connectiontbl'))
		dbglog('loading new state machine')
	me.storeStartupValue('smachine', smachine)
	dbglog('putting states in storage (%s)' % (', '.join(smachine.states.keys()),))
	for state in smachine.states.values():
		me.store(state.name, state)


def get(check=False):
	if smachine is not None:
		return smachine
	sm = me.fetch('smachine', None)
	if sm is None and check:
		raise Exception('statemachine not found')
	return sm


def setCurrent(name):
	sm = get(check=True)
	dbglog('trying to set state to "%s"' % (name,))
	state = sm.setCurrent(name=name)
	me.store('current', state.props if state is not None else None)
	me.cook(force=True)


def pickRandomConnection():
	sm = get(check=True)
	nextConn = sm.pickRandomConnection()
	if nextConn is None:
		dbglog('unable to pick a connection')
	else:
		me.cook(force=True)
		dbglog('picked connection to "%s"' % (nextConn.target.name,))


def buildCurrentStateTable(dat):
	dat.clear()
	dat.appendRow(['name', 'gridx', 'gridy', 'gridz', 'rawx', 'rawy', 'rawz'])
	sm = get()
	if sm is None or sm.current is None:
		return
	tekt.appendDictRow(dat, sm.current.props)


def buildCurrentConnectionsTable(dat):
	dat.clear()
	dat.appendRow(['name', 'gridx', 'gridy', 'gridz', 'rawx', 'rawy', 'rawz'])
	sm = get()
	if sm.current is not None:
		for conn in sm.getConnections():
			tekt.appendDictRow(dat, conn.target.props)


def buildStateDumpTable(dat):
	dat.clear()
	dat.appendRow(['name', 'gridx', 'gridy', 'gridz', 'rawx', 'rawy', 'rawz'])
	sm = get()
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
		props['r'] = color[0]
		props['g'] = color[1]
		props['b'] = color[2]
		props['a'] = color[3]
		tekt.appendDictRow(dat, props)

def buildConnectionDisplayTable(dat):
	dat.clear()
	dat.appendRow(['srcx', 'srcy', 'srcz', 'tgtx', 'tgty', 'tgtz'])
	sm = get()
	if sm is None or sm.current is None:
		return
	srcpos = (sm.current.props['rawx'], sm.current.props['rawy'], sm.current.props['rawz'])
	for conn in sm.current.connections.values():
		targetprops = conn.target.props
		dat.appendRow(srcpos + (targetprops['rawx'], targetprops['rawy'], targetprops['rawz']))

#####
#	load all the state points into a dict( name   -> state )
#	load all the state points into a dict( coords -> state )
#	for each connection point:
#		for each axis:
#			if there are state points at +scaling and -scaling
#				add a connection between them
#####

def _tupleAdd(a, b):
	return [x[0] + x[1] for x in zip(a, b)]

def _tupleMult(a, b):
	return [x[0] * x[1] for x in zip(a, b)]

def fooLoad(pointObjs, connectionObjs, scaling):
	states = {}
	pointLookup = {}
	for obj in pointObjs:
		if obj.type != 'null':
			continue
		state = State({
			'name': obj.name,
			'gridx': int(obj.par.tx / scaling),
			'gridy': int(obj.par.ty / scaling),
			'gridz': int(obj.par.tz / scaling),
			'rawx': obj.par.tx,
			'rawy': obj.par.ty,
			'rawz': obj.par.tz
		})
		states[state.name] = state
		pointLookup[(obj.par.tx, obj.par.ty, obj.par.tz)] = state
	halfScale = scaling / 2
	axes = (
		((-halfScale, 0, 0), (halfScale, 0, 0)),
		((0, -halfScale, 0), (0, halfScale, 0, 0)),
		((0, 0, -halfScale), (0, 0, halfScale))
	)
	for obj in connectionObjs:
		if obj.type != 'null':
			continue
		connpos = (obj.par.tx, obj.par.ty, obj.par.tz)
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

def dumpToTables(states, pointsTbl, connectionsTbl):
	pointsTbl.clear()
	pointsTbl.appendRow(['name', 'gridx', 'gridy', 'gridz', 'rawx', 'rawy', 'rawz'])
	connectionsTbl.clear()
	connectionsTbl.appendRow(['source', 'target'])
	for state in states.values():
		tekt.appendDictRow(pointsTbl, state.props)
		for connection in state.connections.values():
			connectionsTbl.appendRow([connection.source.name, connection.target.name])

