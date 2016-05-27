rendering
pointsFrom: aCollectionOfNodes

	^ aCollectionOfNodes 
		select: [:node | node isNilNode not]
		thenCollect: [:node | | screenCoord |
			screenCoord := (self translate: node coordinates) - (self offset).
			screenCoord + self mapMorphBounds origin].