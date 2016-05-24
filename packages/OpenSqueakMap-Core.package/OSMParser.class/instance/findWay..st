handling - content
findWay: anId

	^ self dataSet content at: anId ifAbsentPut: [OSMWay new id: anId].