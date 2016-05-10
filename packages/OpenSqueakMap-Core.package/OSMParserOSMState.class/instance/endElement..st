as yet unclassified
endElement: aQualifiedName
	aQualifiedName = 'osm'
		ifTrue: [self parser states pop]
		ifFalse: [self error: 'Unmatched closing tag ', aQualifiedName].