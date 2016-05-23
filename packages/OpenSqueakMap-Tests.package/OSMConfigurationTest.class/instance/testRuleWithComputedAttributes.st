as yet unclassified
testRuleWithComputedAttributes

	| object1 object2 |
	
	object1 := self exampleObject1.
	object2 := self exampleObject2.
	
	self configurationRuleWithComputedAttributes
		applyTo: object1;
		applyTo: object2.
		
	self assert: (object1 renderAttributes at: #color) equals: #black.
	self assert: (object2 renderAttributes at: #color) equals: #yellow.
	
	
	