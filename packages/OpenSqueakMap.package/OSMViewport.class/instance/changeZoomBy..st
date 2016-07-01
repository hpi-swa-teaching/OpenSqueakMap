initialize-release
changeZoomBy: anInt

	self zoomLevel: self zoomLevel + anInt.
	self chunkManager invalidateChunks.
	self chunkManager didChangeOn: self.