geometry
missingIndicesIn: aViewport

	| allIndices |
	allIndices := self chunkIndicesIn: aViewport coordBounds.
	^ (allIndices reject: [:i | self chunks includesKey: i]).