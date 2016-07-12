as yet unclassified
downloadMissingChunksIn: aViewport

	| newChunks missingIndices |
	missingIndices := self missingIndicesIn: aViewport.
	self progressBar show: self downloadMessage total: missingIndices size.
	newChunks := OrderedCollection new.
	[missingIndices do: [:x |
		self progressBar next.
		newChunks add: (self addChunkWithIndex: x at: aViewport zoomLevel)]
	] on: OSMAbortException do: [].
	self progressBar hide.
	^ newChunks