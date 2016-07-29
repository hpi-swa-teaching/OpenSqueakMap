morphic
renderOn: aChunk

	| points |
	points := aChunk pointsFrom: self dataObject nodes.
	(points size > 1) ifTrue: [
		self
			vertices: points
			color: (self renderAttributes at: #fillColor ifAbsent: [Color transparent])
			borderWidth: (self renderAttributes at: #borderWidth ifAbsent: [1])
			borderColor: (self renderAttributes at: #color ifAbsent: [Color blue]).
		self dataObject isOpen ifTrue: [self makeOpen].
		aChunk addWayMorph: self].