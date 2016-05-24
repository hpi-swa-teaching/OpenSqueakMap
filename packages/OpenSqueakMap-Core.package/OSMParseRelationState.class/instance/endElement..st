as yet unclassified
endElement: aQualifiedName
	
	aQualifiedName caseOf: {
		['relation']->[
			self parser states pop.
			self parser add: self relation].
		['member']->[].
		['tag']->[].
	} otherwise: [self error: 'Cannot handle element ', aQualifiedName].