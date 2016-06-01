as yet unclassified
pointsFrom: aCollectionOfNodes

	^ aCollectionOfNodes 
		select: [:node | node isNilNode not]
		thenCollect: [:node | | screenCoord |
			screenCoord := (self renderer translate: node coordinates) - (self offset).
			screenCoord + self mapMorphBounds origin].