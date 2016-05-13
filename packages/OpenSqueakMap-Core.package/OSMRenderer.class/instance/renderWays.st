rendering
renderWays
	| points polygonMorph|
	self dataSet ways
		do: [:way | (self wayMorphs includesKey: way id)
			ifFalse: [points := way nodes
				select: [:node | node isNilNode not]
				thenCollect: [:node | self translate: node longitude @ node latitude].
				(points size > 1) ifTrue: [
				polygonMorph := PolygonMorph
					vertices: points
					color: Color red
					borderWidth: 1
					borderColor: Color white.
					polygonMorph makeOpen.
				self wayMorphs
					at: way id
					put: polygonMorph.
				self mapMorph addMorph: polygonMorph]]].