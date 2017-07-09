as yet unclassified
testConfigurationWithAttributes

	| configuration objects |
	configuration := OSMRenderConfiguration new at: 'exampleStaticRule' put: self exampleStaticRule.
	
	objects := OrderedCollection new add: self exampleObject1; add: self exampleObject2; yourself.
	
	configuration applyToAll: objects.
		
	self assert: ((objects at: 1) renderAttributes size) equals: 2.
	self assert: ((objects at: 1) renderAttributes at: #color) equals: Color paleTan.
	self assert: ((objects at: 2) renderAttributes size) equals: 0.
	
	
	