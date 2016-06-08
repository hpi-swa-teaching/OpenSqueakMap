accessing
addChunk: aRenderChunk

	self chunks add: aRenderChunk.
	self addMorph: aRenderChunk.
	aRenderChunk position: 
		self bounds topLeft + 
		(aRenderChunk coordBounds topLeft coordsToPixelsAt: self zoomLevel) -
		((self offset topLeft coordsToPixelsAt: self zoomLevel)).