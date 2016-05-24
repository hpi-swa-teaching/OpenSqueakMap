rendering
render

	self scaleFactorFromBounds: self dataSet bounds.
	self renderObjects do: [:x | x renderOn: self].