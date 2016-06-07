as yet unclassified
pointsFrom: aCollectionOfNodes

	^ aCollectionOfNodes 
		select: [:node | node isNilNode not]
		thenCollect: [:node |
			(node coordinates - self viewport offset topLeft) coordsToPixelsAt: self viewport zoomLevel].