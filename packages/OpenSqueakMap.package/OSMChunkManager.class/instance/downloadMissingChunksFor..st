as yet unclassified
downloadMissingChunksFor: anIndexCollection

	| newChunks missingIndices |
	missingIndices := (anIndexCollection reject: [:i | self chunks includesKey: i]).
	self progressBar show: self downloadMessage total: missingIndices size.
	newChunks := OrderedCollection new.
	[missingIndices do: [:x |
		self progressBar next.
		newChunks add: (self addChunkWithIndex: x)]] on: OSMAbortException do: [].
	self progressBar hide.
	^ newChunks