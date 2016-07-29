handling - content
startElement: aQualifiedName attributes: aDictionary
		
	aQualifiedName caseOf: {
		['p']->[self reading: true].
	} otherwise: []