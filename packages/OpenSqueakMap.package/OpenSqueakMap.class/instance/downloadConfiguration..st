convenience
downloadConfiguration: aDownloadConfiguration

	self chunkManager
		downloadConfiguration: aDownloadConfiguration;
		invalidateChunks;
		changed.