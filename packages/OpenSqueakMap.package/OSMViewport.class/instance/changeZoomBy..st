rendering
changeZoomBy: anInt

	self zoomLevel: self zoomLevel + anInt.
	self chunkManager
		invalidateChunks;
		abortActiveDownloads;
		changed.
