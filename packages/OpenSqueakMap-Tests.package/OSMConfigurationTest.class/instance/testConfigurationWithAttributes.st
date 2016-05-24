as yet unclassified
testConfigurationWithAttributes

	| configuration objects |
	configuration := OSMConfiguration new add: self exampleConfigurationRule.
	
	objects := OrderedCollection new add: self exampleObject1; add: self exampleObject2; yourself.
	
	configuration applyToAll: objects.
		
	self assert: ((objects at: 1) renderAttributes size) equals: 1.
	self assert: ((objects at: 1) renderAttributes at: #color) equals: #testIndigo.
	self assert: ((objects at: 2) renderAttributes size) equals: 0.
	
	
	