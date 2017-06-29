initialize
initialize

	super initialize.
	self
		nodes: Dictionary new;
		renderingChunks: Dictionary new;
		backupChunks: Dictionary new;
		renderConfiguration: OSMRenderConfiguration defaultConfiguration;
		progressBar: OSMProgressMorph new;
		downloadConfiguration: OSMDownloadConfiguration defaultConfiguration;
		updateChunks;
		invalidateChunks.