rendering
toggleRenderConfiguration

	self chunkManager toggleRenderConfiguration.
	self changeZoomBy: 0.
	self chunkManager
		invalidateChunks;
		didChangeOn: self.