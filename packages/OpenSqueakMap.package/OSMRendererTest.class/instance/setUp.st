as yet unclassified
setUp
	
	self
		chunkManager: (OSMChunkManager) new;
		viewport: (OSMViewport
			topLeft: self exampleCoord
			zoom: self exampleZoom
			chunkManager: self chunkManager).
	self viewport hide.
	self chunkManager didChangeOn: self viewport. 