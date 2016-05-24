as yet unclassified
renderOn: aRenderer

	| points wayMorph |	
		points := aRenderer pointsFrom: self osmEntity nodes.
		(points size > 1) ifTrue: [
			wayMorph := OSMMorph
				vertices: points
				color: Color transparent
				borderWidth: (self renderAttributes at: #borderWidth ifAbsent: [1])
				borderColor: (Color fromString: (self renderAttributes at: #color ifAbsent: [#blue])).
			self osmEntity closed ifFalse: [wayMorph makeOpen].
			aRenderer addWayMorph: wayMorph at: self osmEntity id].