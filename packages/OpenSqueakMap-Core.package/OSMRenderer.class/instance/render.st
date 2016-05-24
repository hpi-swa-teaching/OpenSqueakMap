rendering
render
	self resetMap.
	self scaleFactorFromBounds: self dataSet bounds.
	self renderObjects do: [:x | x renderOn: self].