handling - content
getNode: anId

	^ self nodes at: anId ifAbsentPut: [OSMNode new id: anId].