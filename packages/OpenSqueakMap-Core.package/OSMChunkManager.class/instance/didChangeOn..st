as yet unclassified
didChangeOn: aViewport
	| indices|
	indices := self chunkIndicesIn: aViewport offset.
	aViewport chunks: (self downloadedChunksFor: indices).
	aViewport render.
	(self missingChunksFor: indices) keysAndValuesDo: [:index :chunk |
		self chunks at: index put: chunk.
		aViewport addChunk: chunk download].