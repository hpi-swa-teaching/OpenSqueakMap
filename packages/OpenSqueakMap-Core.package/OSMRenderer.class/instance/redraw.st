rendering
redraw

	self resetMap.
	self scaleFactorFromBounds: self dataSet bounds.
	self render.