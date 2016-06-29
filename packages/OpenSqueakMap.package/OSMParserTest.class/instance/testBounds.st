as yet unclassified
testBounds

	| bounds |
	bounds := self dataSet bounds.
	self assert: bounds bottom = 52.3866000.
	self assert: bounds left = 13.1153000.
	self assert: bounds top = 52.3968000.
	self assert: bounds right = 13.1387000.