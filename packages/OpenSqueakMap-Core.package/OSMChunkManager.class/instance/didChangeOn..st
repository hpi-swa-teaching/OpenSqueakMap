as yet unclassified
didChangeOn: aViewport

	| indices|
	indices := self chunkIndicesIn: aViewport coordBounds.
	(self downloadMissingChunksFor: indices) keysAndValuesDo: [:index :chunk |
		aViewport addChunk: chunk].
	self applyConfiguration.
	aViewport render.