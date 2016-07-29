initialize
initialize

	super initialize.
	self
		chunks: Dictionary new;
		nodes: Dictionary new;
		renderingChunks: Dictionary new;
		backupChunks: Dictionary new;
		configuration: OSMConfiguration defaultConfiguration;
		progressBar: OSMProgressMorph new;
		downloadConfig: OSMDownloadConfiguration defaultConfiguration.