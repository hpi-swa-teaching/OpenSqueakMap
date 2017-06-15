morphic
renderOn: aChunk

	| points |
	points := aChunk pointsFrom: self dataObject nodes.
	(points size > 1) ifTrue: [
		self setVertices: points.
		self	isMarked
			ifTrue: [self addMarkerOnIntialize: true] 
			ifFalse: [self setRenderAttributes].
		self dataObject isOpen ifTrue: [self makeOpen].
		aChunk addWayMorph: self].