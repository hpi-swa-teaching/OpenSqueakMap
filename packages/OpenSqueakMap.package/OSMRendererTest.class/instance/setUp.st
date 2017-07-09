running
setUp

	| chunkManager |
	chunkManager := (OSMChunkManager) new.
	self
		viewport: (OSMViewport
			center: self class exampleCoord
			zoom: self class exampleZoom
			chunkManager: self chunkManager);
		chunkManager: chunkManager.
	self chunkManager viewport: self viewport.
	self viewport hide.
	self chunkManager changed. 