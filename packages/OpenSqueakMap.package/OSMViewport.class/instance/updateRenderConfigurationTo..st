actions
updateRenderConfigurationTo: aRenderConfiguration

	self chunkManager 
		renderConfiguration: aRenderConfiguration;
		applyRenderConfiguration;
		invalidateChunks;
		didChangeOn: self.