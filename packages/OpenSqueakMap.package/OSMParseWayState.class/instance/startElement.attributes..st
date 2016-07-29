handling - content
startElement: aQualifiedName attributes: aDictionary
		
	aQualifiedName caseOf: {
		['tag']->[self way tags at: (aDictionary at: #k) put: (aDictionary at: #v)].
		['nd']->[self way nodes add: (self parser findNode: (aDictionary at: #ref))].
	} otherwise: [self unknownTag: aQualifiedName].