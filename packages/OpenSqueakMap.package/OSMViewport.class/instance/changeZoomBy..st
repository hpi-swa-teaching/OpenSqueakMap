initialize-release
changeZoomBy: anInt

	self zoomLevel: self zoomLevel + anInt.
	self chunkManager
		invalidateChunks;
		didChangeOn: self.