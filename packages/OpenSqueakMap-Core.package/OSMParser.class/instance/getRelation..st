handling - content
getRelation: anId

	^ self dataSet relations at: anId ifAbsentPut: [OSMRelation new id: anId].