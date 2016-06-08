as yet unclassified
pointsFrom: aCollectionOfNodes

	^ aCollectionOfNodes 
		select: [:node | node isNilNode not]
		thenCollect: [:node |
			self bounds topLeft +
			(node coordinates coordsToPixelsAt: self viewport zoomLevel) - 
			(self coordBounds topLeft coordsToPixelsAt: self viewport zoomLevel)].