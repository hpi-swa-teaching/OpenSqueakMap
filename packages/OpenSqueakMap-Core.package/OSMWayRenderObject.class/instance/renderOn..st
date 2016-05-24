as yet unclassified
renderOn: aRenderer

	| points wayMorph |	
		points := aRenderer pointsFrom: self osmEntity nodes.
		(points size > 1) ifTrue: [
			wayMorph := PolygonMorph
				vertices: points
				color: (Color fromString: (self renderAttributes at: #color ifAbsent: [#blue]))
				borderWidth: 1
				borderColor: Color white.
			self osmEntity closed ifFalse: [wayMorph makeOpen].
			aRenderer addWayMorph: wayMorph at: self osmEntity id].