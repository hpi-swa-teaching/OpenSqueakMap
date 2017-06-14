accessing
changeRenderConfiguration

	(self renderConfiguration name = 'defaultConfiguration')
		ifTrue: [self renderConfiguration: OSMRenderConfiguration alternativeConfiguration]
		ifFalse: [self renderConfiguration: OSMRenderConfiguration defaultConfiguration].