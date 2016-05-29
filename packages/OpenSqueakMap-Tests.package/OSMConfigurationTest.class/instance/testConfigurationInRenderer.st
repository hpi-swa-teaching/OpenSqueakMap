as yet unclassified
testConfigurationInRenderer

	| configuration osmObjects dataSet renderer |
	configuration := OSMConfiguration new add: self exampleConfigurationRule.
	osmObjects := Dictionary newFrom: {1 -> (OSMNode new id: 1). 2 -> (OSMNode new id: 2)}.
	dataSet := OSMDataset new content: osmObjects; bounds: (Rectangle
			left: 0
			right: 10
			top: 0
			bottom: 10);yourself.
	renderer := OSMRenderer on: dataSet with: configuration.

	self assert: ((renderer renderObjects at: 1) renderAttributes at: #color) equals: Color paleTan.
	self should: [(renderer renderObjects at: 2) renderAttributes at: #color] raise: KeyNotFound.
	renderer mapMorph delete.
	
	
	