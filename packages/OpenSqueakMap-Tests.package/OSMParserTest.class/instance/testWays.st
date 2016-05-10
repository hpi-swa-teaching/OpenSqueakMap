as yet unclassified
testWays
	| ways firstWay secondWay |
	ways := self parser ways.
	self assert: ways size = 2.
	
	firstWay := ways at: '51763472'.
	self assert: firstWay id = '51763472'.
	
	self assert: firstWay nodes size = 2.
	self assert: (firstWay nodes at: 1) id = '27127283'.
	self assert: (firstWay nodes at: 1) latitude = 52.4023071.
	self assert: (firstWay nodes at: 2) id = '318693749'.
	self assert: (firstWay nodes at: 2) latitude = 52.3989957.
	
	self assert: firstWay tags size = 1.
	self assert: (firstWay tags at: #highway) = 'footway'.
	
	secondWay := ways at: '123456'.
	self assert: secondWay id = '123456'.
	self assert: secondWay nodes size = 0.