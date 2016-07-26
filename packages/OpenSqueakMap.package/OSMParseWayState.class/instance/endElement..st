as yet unclassified
endElement: aQualifiedName
	
	aQualifiedName caseOf: {
		['way']->[
			self parser states pop.
			self parser addWay: self way].
		['nd']->[].
		['tag']->[].
	} otherwise: [self unknownTag: aQualifiedName].