accessing
addChunk: aRenderChunk

	self chunks add: aRenderChunk.
	self addMorph: aRenderChunk.
	aRenderChunk position: ((self offset topLeft coordsToPixelsAt: self zoomLevel) - (aRenderChunk topLeft coordsToPixelsAt: self zoomLevel)).