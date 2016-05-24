rendering
render
	self mapMorph openInWorld.
	self scaleFactorFromBounds: self dataSet bounds.
	self objectsAtCurrentZoomLevel do: [:x | x renderOn: self].