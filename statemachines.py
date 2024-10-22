__author__ = 'tekt'
import tekt
import random
import json
from abc import abstractmethod, ABCMeta
from collections import deque

loggingEnabled = False

def dbglog(msg):
	if loggingEnabled:
		print(msg)

class State:
	def __init__(self, props):
		"""
		:type props dict
		"""
		self.props = props
		self.name = props['name']
		self.connections = {}

	def addConnection(self, conn):
		"""
		:type conn Connection
		"""
		self.connections[conn.target.name] = conn

	def __repr__(self):
		return "State(%s)" % (self.name,)

	def toJsonDict(self):
		d = dict(self.props)
		d['connections'] = list(self.connections.keys())
		return d

class Connection:
	def __init__(self, source, target, props):
		"""
		:type source State
		:type target State
		:type props dict
		"""
		self.source = source
		self.target = target
		self.props = props if props else {}

	def __repr__(self):
		return "Connection(%s -> %s)" % (self.source.name, self.target.name)

class StateMachine:
	def __init__(self, states: dict=None, startName: str=None, chooser=None):
		"""
		:type states dict
		:type startName str
		"""
		self.states = states
		""" :type State """
		self.current = None
		if startName is not None:
			self.setCurrent(name=startName)
		self.chooser = chooser

	def getState(self, name, check=False):
		state = self.states[name] if name is not None else None
		if check and state is None:
			raise Exception('State not found: "%s"' % (name,))
		return state

	def setCurrent(self, name=None, state=None, check=True):
		"""
		:type name str
		:type state State
		"""
		if state is None:
			state = self.getState(name, check=check)
		self.current = state
		dbglog('state set to "%s"' % (state.name,))
		return state

	def getConnections(self):
		if self.current is None:
			return []
		return list(self.current.connections.values())

	def getAllConnections(self):
		for state in self.states.values():
			for conn in state.connections.values():
				yield conn

	def getConnectionTargetNames(self):
		return [c.target.name for c in self.getConnections()]

	def chooseNext(self):
		if self.current is None:
			return None
		conns = self.getConnections()
		if len(conns) == 0:
			return None
		if self.chooser is None:
			c = random.choice(conns)
			return None if c is None else c.target
		return self.chooser.chooseNext(self.current, conns)

	def followNext(self):
		nextState = self.chooseNext()
		if nextState is None:
			return None
		self.setCurrent(state=nextState)
		return nextState

	def __repr__(self):
		return 'StateMachine( current: %s )' % (self.current,)

	def toJsonDict(self):
		return {
			'current': (self.current.name if self.current is not None else None,),
			'states': {state.name: state.toJsonDict() for state in self.states.values()}}

	def toJson(self):
		d = self.toJsonDict()
		return json.dumps(d, sort_keys=True, indent=4)

class Chooser:
	def __init__(self, settings: tekt.Settings):
		self.smachine = None
		self.settings = settings
		self.previous = deque(maxlen=int(settings.get('traillength', defaultval=2)))

	def attach(self, smachine: StateMachine):
		self.smachine = smachine
		self.previous = smachine.current

	def chooseNext(self, currentState: State, connections: list) -> State:
		dbglog('choosing next state...')
		newmaxlen = self.settings.traillength
		if newmaxlen is not None and int(newmaxlen) != self.previous.maxlen:
			dbglog('trail length changed to %s' % (int(newmaxlen),))
			self.previous = deque(self.previous, maxlen=int(newmaxlen))
		if not int(self.settings.get('norepeat', defaultval='0')):
			dbglog('norepeat is off, choosing random connection')
			conn = random.choice(connections)
		else:
			dbglog('norepeat is on, previous= %s' % (tuple(self.previous),))
			filteredconns = list(c for c in connections if c.target.name not in self.previous)
			dbglog('-- found %s of %s connections that are not repeats' % (len(filteredconns), len(connections)))
			if len(filteredconns) > 0:
				conn = random.choice(filteredconns)
			else:
				conn = random.choice(connections)
		if conn is None:
			dbglog('no connection found!')
		else:
			dbglog('chose connection to %s' % (conn.target.name,))
		self.previous.append(currentState.name)
		return conn.target if conn is not None else None