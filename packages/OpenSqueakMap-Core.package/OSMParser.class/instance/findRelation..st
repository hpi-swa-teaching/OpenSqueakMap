handling - content
findRelation: anId

	^ self dataSet relations at: anId ifAbsentPut: [OSMRelation new id: anId].