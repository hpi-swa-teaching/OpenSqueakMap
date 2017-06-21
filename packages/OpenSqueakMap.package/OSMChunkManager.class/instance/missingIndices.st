geometry
missingIndices

	| allIndices |
	allIndices := self chunkIndicesIn: self viewport coordBounds.
	^ (allIndices reject: [:i | self cachedChunks includesKey: i]).