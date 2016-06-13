as yet unclassified
didChangeOn: aViewport
	| indices|
	indices := self chunkIndicesIn: aViewport offset.
	aViewport chunks: (self downloadedChunksFor: indices).
	aViewport render.
	(self downloadMissingChunksFor: indices) keysAndValuesDo: [:index :chunk |
		aViewport addChunk: chunk].
	self applyConfiguration.
	aViewport render.