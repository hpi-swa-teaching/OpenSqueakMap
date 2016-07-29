convenience
downloadConfiguration: aDownloadConfiguration

	self chunkManager
		downloadConfiguration: aDownloadConfiguration;
		invalidateChunks;
		didChangeOn: self viewport.