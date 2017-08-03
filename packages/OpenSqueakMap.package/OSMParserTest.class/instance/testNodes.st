running
testNodes

	| nodes firstNode secondNode |
	nodes := self dataSet nodes select: [:x | x type = #node].
	self assert: nodes size = 2.
	
	firstNode := nodes at: '27127283'.
	self assert: firstNode id = '27127283'.
	self assert: firstNode latitude = 52.4023071.
	self assert: firstNode longitude = 13.1140175.
	
	secondNode := nodes at: '318693749'.
	self assert: secondNode id = '318693749'.
	self assert: secondNode latitude = 52.3989957.
	self assert: secondNode longitude = 13.1414180.
	
	self assert: secondNode tags size = 2.
	self assert: (secondNode tags at: #railway) = 'switch'.
	self assert: (secondNode tags at: #source) = 'Bing'.