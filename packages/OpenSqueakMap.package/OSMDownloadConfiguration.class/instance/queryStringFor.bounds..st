as yet unclassified
queryStringFor: aZoomLevel bounds: aRectangle

	| boundsString boundedRules combinedRules|
	boundsString := self boundsStringFor: aRectangle.
	boundedRules := (self rules at: aZoomLevel) collect: [:r | | fullRule |
		fullRule := r queryString, boundsString, ';'.
		'node', fullRule,
		'way', fullRule,
		'rel', fullRule].
	combinedRules := boundedRules inject: '' into: [:accumulator :rule | accumulator, rule].
	^ '(' , combinedRules , '); (._;>;); out;'.