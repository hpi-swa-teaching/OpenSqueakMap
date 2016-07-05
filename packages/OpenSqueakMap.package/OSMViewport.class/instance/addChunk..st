accessing
addChunk: aRenderChunk

	self chunks add: aRenderChunk.
	aRenderChunk viewport: self.