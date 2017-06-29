accessing
addChunk: aRenderChunk

	self chunks addIfNotPresent: aRenderChunk.
	aRenderChunk viewport: self.