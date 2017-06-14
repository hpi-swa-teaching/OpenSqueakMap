rendering
changeRenderConfiguration

	self chunkManager changeRenderConfiguration.
	self changeZoomBy: 0.
	self chunkManager
		invalidateChunks;
		didChangeOn: self.