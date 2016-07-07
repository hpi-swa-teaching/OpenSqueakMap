as yet unclassified
renderOn: aChunk

	| points |
	points := aChunk pointsFrom: self osmEntity nodes.
	(points size > 1) ifTrue: [
		self
			vertices: points
			color: (self renderAttributes at: #fillColor ifAbsent: [Color transparent])
			borderWidth: (self renderAttributes at: #borderWidth ifAbsent: [1])
			borderColor: (self renderAttributes at: #color ifAbsent: [Color blue]).
		self osmEntity isOpen ifTrue: [self makeOpen].
		aChunk addWayMorph: self at: self osmEntity id].