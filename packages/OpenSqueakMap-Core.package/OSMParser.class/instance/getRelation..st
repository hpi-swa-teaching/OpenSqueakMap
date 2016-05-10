handling - content
getRelation: anId

	^ self relations at: anId ifAbsentPut: [OSMRelation new id: anId].