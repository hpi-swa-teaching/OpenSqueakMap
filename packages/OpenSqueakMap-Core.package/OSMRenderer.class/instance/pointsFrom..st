rendering
pointsFrom: aCollectionOfNodes

	^ aCollectionOfNodes 
		select: [:node | node isNilNode not]
		thenCollect: [:node |
			self translate: node coordinates bounds: self dataSet bounds].