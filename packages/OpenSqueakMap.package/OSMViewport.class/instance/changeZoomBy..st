initialize-release
changeZoomBy: anInt

	self zoomLevel: self zoomLevel + anInt.
	self calcCoordBoundsFrom: self coordBounds topLeft.
	self chunkManager invalidateChunks.
	self chunkManager didChangeOn: self.