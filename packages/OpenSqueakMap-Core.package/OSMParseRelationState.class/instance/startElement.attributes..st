as yet unclassified
startElement: aQualifiedName attributes: aDictionary
		
	aQualifiedName caseOf: {
		['tag']->[self way tags at: (aDictionary at: #k) put: (aDictionary at: #v)].
		['member']->[self addMember: aDictionary].
	} otherwise: [self error: 'Cannot handle element ', aQualifiedName]