rendering
redraw

	| offs |
	self resetMap.
	offs := self offset / self scaleFactor.
	self scaleFactorFromBounds: self dataSet bounds.
	self offset: offs * self scaleFactor.
	self render.