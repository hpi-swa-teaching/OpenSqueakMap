as yet unclassified
pointsFrom: aCollectionOfNodes

	^ ((aCollectionOfNodes 
		collect: [:node | self chunkManager nodes at: node id ifAbsent: [nil]])
		reject: [:x | x isNil or: [x isNilNode]])
		collect: [:node |
			self bounds topLeft +
			(node coordinates coordsToPixelsAt: self viewport zoomLevel) - 
			(self coordBounds topLeft coordsToPixelsAt: self viewport zoomLevel)].