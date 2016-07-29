handling - content
addMember: aDictionary

	(aDictionary at: #type) caseOf: {
		['node']->[self relation members add: (self parser findNode: (aDictionary at: #ref))].
		['way']->[self relation members add: (self parser findWay: (aDictionary at: #ref))].
		['relation']->[self relation members add: (self parser findRelation: (aDictionary at: #ref))].
	} otherwise: [self error: 'Unknown type, ', (aDictionary at: #type)]
	