handling - content
findWay: anId

	^ self dataSet ways at: anId ifAbsentPut: [OSMWay new id: anId].