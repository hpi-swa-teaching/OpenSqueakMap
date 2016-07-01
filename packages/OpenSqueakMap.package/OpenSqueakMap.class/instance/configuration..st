accessing
configuration: aConfiguration

	self chunkManager
		configuration: aConfiguration;
		applyConfiguration;
		didChangeOn: self viewport.