convenience
configuration: aConfiguration

	self chunkManager
		configuration: aConfiguration;
		applyConfiguration;
		invalidateChunks;
		didChangeOn: self viewport.