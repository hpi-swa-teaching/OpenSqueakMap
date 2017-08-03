running
testConfigurationWithAttributes

	| configuration objects |
	configuration := OSMRenderConfiguration new at: 'exampleStaticRule' put: self class exampleStaticRule.
	objects := OrderedCollection new add: self class exampleObject1; add: self class exampleObject2; yourself.
	configuration applyToAll: objects.
		
	self assert: ((objects at: 1) renderAttributes size) equals: 2.
	self assert: ((objects at: 1) renderAttributes at: #color) equals: Color paleTan.
	self assert: ((objects at: 2) renderAttributes size) equals: 0.
	
	
	