running
setUp
	
	self
		chunkManager: (OSMChunkManager) new;
		viewport: (OSMViewport
			topLeft: self class exampleCoord
			zoom: self class exampleZoom
			chunkManager: self chunkManager).
	self viewport hide.
	self chunkManager changed. 