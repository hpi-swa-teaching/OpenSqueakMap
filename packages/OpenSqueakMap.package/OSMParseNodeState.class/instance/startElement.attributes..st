as yet unclassified
startElement: aQualifiedName attributes: aDictionary
		
	aQualifiedName caseOf: {
		['tag']->[self node tags at: (aDictionary at: #k) put: (aDictionary at: #v)].
	} otherwise: [self unknownTag: aQualifiedName].