convenience
renderConfiguration: aRenderConfiguration

	self chunkManager
		renderConfiguration: aRenderConfiguration;
		applyRenderConfiguration;
		invalidateChunks;
		didChangeOn: self viewport.