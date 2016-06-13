accessing
configuration: aConfiguration

	self chunkManager
		configuration: aConfiguration;
		applyConfiguration.
	self viewport chunks do: [:chunk | chunk renderObjects do: [:rO | rO renderOn: chunk]].