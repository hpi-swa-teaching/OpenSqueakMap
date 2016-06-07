as yet unclassified
pointsFrom: aCollectionOfNodes

	^ aCollectionOfNodes 
		select: [:node | node isNilNode not]
		thenCollect: [:node | | screenCoord |
			screenCoord := (node coordinates coordsToPixelsAt: self viewport zoomLevel) - (self offset).
			screenCoord + self mapMorphBounds origin].