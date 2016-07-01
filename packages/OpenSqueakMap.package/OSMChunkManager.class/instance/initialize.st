as yet unclassified
initialize

	super initialize.
	self
		chunks: Dictionary new;
		nodes: Dictionary new;
		renderingChunks: Dictionary new;
		backupChunks: Dictionary new;
		configuration: OSMConfiguration testConfig;
		progressBar: OSMProgressMorph new.