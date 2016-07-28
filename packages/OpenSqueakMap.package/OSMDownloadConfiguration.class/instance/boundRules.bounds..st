as yet unclassified
boundRules: aCollection bounds: aRectangle

	| boundsString |
	boundsString := self boundsStringFor: aRectangle.
	^ aCollection collect: [:r | 
		| fullRule |
		fullRule := r queryString, boundsString, ';'.
		'node', fullRule,
		'way', fullRule,
		'rel', fullRule].