handling - content
findNode: anId

	^ self dataSet content at: anId ifAbsentPut: [OSMNode new id: anId].