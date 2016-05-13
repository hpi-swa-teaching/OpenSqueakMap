handling - content
getWay: anId

	^ self dataSet ways at: anId ifAbsentPut: [OSMWay new id: anId].