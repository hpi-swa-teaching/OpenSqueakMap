running
testObjectWithOverlappingRules

	| object1 object2 rule1 rule2 |
	object1 := self exampleObject1.
	object2 := self exampleObject2.
	rule1 := self exampleStaticRule1.
	rule2 := self exampleStaticRule2.
	
	rule1 applyTo: object2.
	rule2 applyTo: object2.
	rule1 applyTo: object1.

	self assert: (object1 renderAttributes at: #color) equals: Color paleTan.
	
	