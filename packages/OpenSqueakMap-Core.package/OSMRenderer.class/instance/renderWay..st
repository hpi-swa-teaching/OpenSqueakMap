rendering
renderWay: aWay

	| points wayMorph |	
	(self wayMorphs includesKey: aWay id) ifFalse: [
		points := self pointsFrom: aWay nodes.
		(points size > 1) ifTrue: [
			wayMorph := OSMMorph
				vertices: points
				color: Color red
				borderWidth: 1
				borderColor: Color white.
			aWay closed ifFalse: [wayMorph makeOpen].
			self addWayMorph: wayMorph at: aWay id]].