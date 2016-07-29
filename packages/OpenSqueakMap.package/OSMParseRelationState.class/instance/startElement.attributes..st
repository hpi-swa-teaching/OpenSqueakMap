handling - content
startElement: aQualifiedName attributes: aDictionary
		
	aQualifiedName caseOf: {
		['tag']->[self relation tags at: (aDictionary at: #k) put: (aDictionary at: #v)].
		['member']->["self addMember: aDictionary"].
	} otherwise: [self unknownTag: aQualifiedName]