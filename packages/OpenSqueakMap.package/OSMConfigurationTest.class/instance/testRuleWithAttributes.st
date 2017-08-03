running
testRuleWithAttributes

	| concernedObject unconcernedObject |
	
	concernedObject := self exampleObject1.
	unconcernedObject := self exampleObject2.
	
	self exampleStaticRule
		applyTo: concernedObject;
		applyTo: unconcernedObject.
		
	self assert: (concernedObject renderAttributes size) equals: 2.
	self assert: (concernedObject renderAttributes at: #color) equals: Color paleTan.
	self assert: (unconcernedObject renderAttributes size) equals: 0.
	
	
	