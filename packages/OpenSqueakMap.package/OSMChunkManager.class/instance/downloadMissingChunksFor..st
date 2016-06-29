as yet unclassified
downloadMissingChunksFor: anIndexCollection

	| newChunks missingIndices |
	missingIndices := (anIndexCollection reject: [:i | self chunks includesKey: i]).
	self progressBar show: 'Downloading chunks...' total: missingIndices size.
	newChunks := missingIndices collect: [:x |
		self progressBar next.
		self addChunkWith: x].
	self progressBar hide.
	^ newChunks