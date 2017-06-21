geometry
missingIndices

	| allIndices |
	allIndices := self chunkIndicesIn: self viewport coordBounds.
	^ (allIndices reject: [:i | self class chunks includesKey: i]).