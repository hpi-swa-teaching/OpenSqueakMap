accessing
addChunk: aRenderChunk

	self chunks add: aRenderChunk.
	self addMorph: aRenderChunk.
	aRenderChunk viewport: self.
	aRenderChunk position: 
		self bounds topLeft + 
		(aRenderChunk coordBounds topLeft coordsToPixelsAt: self zoomLevel) -
		((self offset topLeft coordsToPixelsAt: self zoomLevel)).