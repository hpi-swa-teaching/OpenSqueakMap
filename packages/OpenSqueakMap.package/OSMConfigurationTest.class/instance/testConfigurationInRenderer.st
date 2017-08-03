running
testConfigurationInRenderer

	| configuration osmObjects dataSet chunk |
	configuration := OSMRenderConfiguration new at: 'exampleStaticRule' put: self class exampleStaticRule.
	osmObjects := Dictionary newFrom: {1 -> (OSMNode new id: 1). 2 -> (OSMNode new id: 2)}.
	dataSet := OSMDataset new nodes: osmObjects; yourself.
	chunk := OSMChunk new coordBounds: (Rectangle
			left: 0
			right: 10
			top: 0
			bottom: 10); dataSet: dataSet; applyConfiguration: configuration; yourself.

	self assert: ((chunk renderObjects at: 1) renderAttributes at: #color) equals: Color paleTan.
	self should: [(chunk renderObjects at: 2) renderAttributes at: #color] raise: KeyNotFound.
	
	
	