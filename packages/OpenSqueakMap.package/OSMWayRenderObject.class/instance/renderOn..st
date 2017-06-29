morphic
renderOn: aChunk

	| points |
	points := aChunk pointsFrom: self dataObject nodes.
	(points size > 1) ifTrue: [
		self setRenderAttributesWithVertices: points.
		self	isMarked
 			ifTrue: [self addMarkerOnIntialize: true].
		self dataObject isOpen ifTrue: [self makeOpen].
		aChunk addWayMorph: self].
	