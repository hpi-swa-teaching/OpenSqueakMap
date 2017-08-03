running
testRuleWithComputedAttributes

	| object1 object2 object3 |
	object1 := self exampleObject1.
	object2 := self exampleObject2.
	object3 := self exampleObject3.
	self exampleComputedRule
		applyTo: object1;
		applyTo: object2;
		applyTo: object3.
		
	self assert: (object1 renderAttributes at: #color) equals: Color black.
	self assert: (object2 renderAttributes at: #color) equals: Color yellow.
	self assert: (object3 renderAttributes includesKey: #color) equals: false.