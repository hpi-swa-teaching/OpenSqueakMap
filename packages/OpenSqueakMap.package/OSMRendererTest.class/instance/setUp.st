running
setUp

	super setUp.
	self
		viewport: (OSMViewport
			center: self class exampleCoord
			zoom: self class exampleZoom
			chunkManager: OSMChunkManager new).
	self viewport hide.
	(self viewport chunkManager) viewport: self viewport.
	self viewport chunkManager changed.