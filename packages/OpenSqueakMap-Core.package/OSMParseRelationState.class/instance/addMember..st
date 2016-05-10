as yet unclassified
addMember: aDictionary

	(aDictionary at: #type) caseOf: {
		['node']->[self relation members add: (self parser getNode: (aDictionary at: #ref))].
		['way']->[self relation members add: (self parser getWay: (aDictionary at: #ref))].
		['relation']->[self relation members add: (self parser getRelation: (aDictionary at: #ref))].
	} otherwise: [self error: 'Unknown type, ', (aDictionary at: #type)]
	