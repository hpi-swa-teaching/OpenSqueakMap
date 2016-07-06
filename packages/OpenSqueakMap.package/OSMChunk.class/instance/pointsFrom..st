as yet unclassified
pointsFrom: aCollectionOfNodes

	^ ((aCollectionOfNodes 
		collect: [:node | self chunkManager nodes at: node id ifAbsent: [nil]])
		reject: [:x | x isNil or: [x isNilNode]])
		collect: [:node | node coordinates positionInViewport: self viewport].