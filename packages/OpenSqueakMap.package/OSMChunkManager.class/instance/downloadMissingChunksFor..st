as yet unclassified
downloadMissingChunksFor: anIndexCollection

	| newChunks missingIndices |
	missingIndices := (anIndexCollection reject: [:i | self chunks includesKey: i]).
	self progressBar show: self downloadMessage total: missingIndices size.
	newChunks := missingIndices collect: [:x |
		self progressBar next.
		self addChunkWithIndex: x].
	self progressBar hide.
	^ newChunks