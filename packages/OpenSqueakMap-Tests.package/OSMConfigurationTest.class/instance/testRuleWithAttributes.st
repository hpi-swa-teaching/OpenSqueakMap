as yet unclassified
testRuleWithAttributes

	| concernedObject unconcernedObject |
	
	concernedObject := self exampleObject1.
	unconcernedObject := self exampleObject2.
	
	self exampleConfigurationRule
		applyTo: concernedObject;
		applyTo: unconcernedObject.
		
	self assert: (concernedObject renderAttributes size) equals: 1.
	self assert: (concernedObject renderAttributes at: #color) equals: Color paleTan.
	self assert: (unconcernedObject renderAttributes size) equals: 0.
	
	
	