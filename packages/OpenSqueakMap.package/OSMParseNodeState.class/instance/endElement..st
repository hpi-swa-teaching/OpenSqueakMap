as yet unclassified
endElement: aQualifiedName
	
	aQualifiedName caseOf: {
		['node']->[
			self parser states pop.
			self parser addNode: self node].
		['tag']->[].
	} otherwise: [self error: 'Cannot handle element ', aQualifiedName].
	