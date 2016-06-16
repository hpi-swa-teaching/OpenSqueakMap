as yet unclassified
testRuleWithComputedAttributes

	| object1 object2 object3 |
	
	object1 := self exampleObject1.
	object2 := self exampleObject2.
	object3 := self exampleObject3.
	
	self configurationRuleWithComputedAttributes
		applyTo: object1;
		applyTo: object2;
		applyTo: object3.
		
	self assert: (object1 renderAttributes at: #color) equals: #black.
	self assert: (object2 renderAttributes at: #color) equals: #yellow.
	self assert: (object3 renderAttributes includesKey: #color) equals: false.
	
	
	