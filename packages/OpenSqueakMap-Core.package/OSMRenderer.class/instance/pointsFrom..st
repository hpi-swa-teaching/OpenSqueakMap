rendering
pointsFrom: aCollectionOfNodes

	^ aCollectionOfNodes 
		select: [:node | node isNilNode not]
		thenCollect: [:node | | screenCoord |
			screenCoord := self translate: node coordinates bounds: self dataSet bounds.
			screenCoord + self mapMorphBounds origin].