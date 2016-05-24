rendering
render

	self scaleFactorFromBounds: self dataSet bounds.
	(OSMConfiguration new add: (OSMConfigurationRule for: [:x | true] setAttributes: (Dictionary new at: #color put: #green; yourself))) applyToAll: self renderObjects.
	self renderObjects do: [:x | x renderOn: self].