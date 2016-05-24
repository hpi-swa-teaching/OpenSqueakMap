rendering
render

	self scaleFactorFromBounds: self dataSet bounds.
	self configuration applyToAll: self renderObjects.
	self renderObjects do: [:x | x renderOn: self].