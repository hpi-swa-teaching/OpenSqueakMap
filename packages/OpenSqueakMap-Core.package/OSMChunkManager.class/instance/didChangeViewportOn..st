as yet unclassified
didChangeViewportOn: aRenderer
	| indices|
	indices := self chunkIndicesIn: aRenderer offset.
	aRenderer chunks: (self downloadedChunksFor: indices).
	aRenderer render.
	(self missingChunksFor: indices) keysAndValuesDo: [:index :chunk |
		self chunks at: index put: chunk.
		aRenderer addChunk: chunk download].