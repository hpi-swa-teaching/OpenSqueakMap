running
setUp
	
	self
		chunkManager: (OSMChunkManager) new;
		viewport: (OSMViewport
			center: self class exampleCoord
			zoom: self class exampleZoom
			chunkManager: self chunkManager).
	self viewport hide.
	self chunkManager changed. 