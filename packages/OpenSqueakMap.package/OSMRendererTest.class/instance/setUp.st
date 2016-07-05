as yet unclassified
setUp
	
	super setUp.
	self chunkmanager: OSMChunkManager new;
		 viewport: (OSMViewport topLeft: self exampleCoord zoom: self exampleZoom chunkManager: self chunkmanager).
	self viewport hide.
	self chunkmanager didChangeOn: self viewport. 