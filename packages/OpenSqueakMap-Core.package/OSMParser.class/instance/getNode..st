handling - content
getNode: anId

	^ self dataSet nodes at: anId ifAbsentPut: [OSMNode new id: anId].