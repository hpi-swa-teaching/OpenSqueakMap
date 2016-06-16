as yet unclassified
show: aPoint

	(aPoint isKindOf: Rectangle)
		ifTrue: [	self error: 'Usage: OpenSqueakMap show: aPoint']
		ifFalse: [self show: aPoint at: 17].