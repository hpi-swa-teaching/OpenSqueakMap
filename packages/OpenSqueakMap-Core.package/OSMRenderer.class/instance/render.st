rendering
render

	self objectsAtCurrentZoomLevel do: [:x | x renderOn: self].
	^ self mapMorph.