handling - content
findRelation: anId

	^ self dataSet content at: anId ifAbsentPut: [OSMRelation new id: anId].