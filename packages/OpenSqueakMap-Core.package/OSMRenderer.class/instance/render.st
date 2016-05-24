rendering
render

	self scaleFactorFromBounds: self dataSet bounds.
	self objectsAtCurrentZoomLevel do: [:x | x renderOn: self].