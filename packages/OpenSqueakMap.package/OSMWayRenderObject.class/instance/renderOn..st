as yet unclassified
renderOn: aChunk

	| points |
	points := aChunk pointsFrom: self osmEntity nodes.
	(points size > 1) ifTrue: [
		self morph: ((OSMMorph
			vertices: points
			color: (self renderAttributes at: #fillColor ifAbsent: [Color transparent])
			borderWidth: (self renderAttributes at: #borderWidth ifAbsent: [1])
			borderColor: (self renderAttributes at: #color ifAbsent: [Color blue])) osmEntity: self osmEntity).
		self osmEntity isOpen ifTrue: [self morph makeOpen].
		aChunk addWayMorph: self morph at: self osmEntity id].