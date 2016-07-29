as yet unclassified
testDownload

	<timeout: 60>
	self 
	shouldnt: [OSMChunk new coordBounds: self exampleBounds;
		downloadWithConfig: OSMDownloadConfiguration defaultConfiguration at: OpenSqueakMap defaultZoomLevel]
	 raise: OSMApiException, XMLException.