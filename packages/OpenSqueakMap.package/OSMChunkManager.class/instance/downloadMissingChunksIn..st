downloading
downloadMissingChunksIn: aViewport

	| newChunks missingIndices |
	missingIndices := self missingIndicesIn: aViewport.
	self progressBar center: aViewport center.
	self progressBar show: self downloadMessage total: missingIndices size.
	newChunks := OrderedCollection new.
	"We don't use collect in order to get a partial result in case of exceptions being thrown"
	[missingIndices do: [:x |
		self progressBar next.
		newChunks add: (self addChunkWithIndex: x at: aViewport zoomLevel)]
	] on: OSMAbortException do: [].
	self progressBar hide.
	^ newChunks