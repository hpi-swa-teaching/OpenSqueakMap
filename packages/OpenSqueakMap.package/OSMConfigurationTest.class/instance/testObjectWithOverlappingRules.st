running
testObjectWithOverlappingRules

	| object1 object2 rule1 rule2 |
	object1 := self class exampleObject1.
	object2 := self class exampleObject2.
	rule1 := self class exampleStaticRule1.
	rule2 := self class exampleStaticRule2.
	
	rule1 applyTo: object2.
	rule2 applyTo: object2.
	rule1 applyTo: object1.

	self assert: (object1 renderAttributes at: #color) equals: Color paleTan.
	
	