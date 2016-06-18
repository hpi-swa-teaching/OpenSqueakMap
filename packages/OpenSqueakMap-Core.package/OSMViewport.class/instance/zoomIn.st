rendering
zoomIn

	self zoomLevel: self zoomLevel + 1.
	self calcCoordBoundsFrom: self coordBounds topLeft.
	self chunkManager didChangeOn: self redrawChunks: true.