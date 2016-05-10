handling - content
getWay: anId

	^ self ways at: anId ifAbsentPut: [OSMWay new id: anId].