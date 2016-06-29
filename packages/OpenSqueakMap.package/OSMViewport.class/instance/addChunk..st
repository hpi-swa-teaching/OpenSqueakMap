accessing
addChunk: aRenderChunk

	self chunks add: aRenderChunk.
	self addMorphBack: aRenderChunk.
	aRenderChunk viewport: self.