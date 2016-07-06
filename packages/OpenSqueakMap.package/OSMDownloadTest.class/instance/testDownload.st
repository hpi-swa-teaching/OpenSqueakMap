as yet unclassified
testDownload

	<timeout: 60>
	self 
	shouldnt: [OSMChunk new
		coordBounds: self exampleBounds;
		download]
	 raise: OSMApiException, XMLException.