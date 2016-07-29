query building
buildQueryFrom: aRuleCollection forBounds: aRectangle

	| boundsString boundedRules |
	boundsString := self boundsStringFor: aRectangle.
	boundedRules := aRuleCollection collect: [:r | 
		| fullRule |
		fullRule := r queryString, boundsString, ';'.
		'node', fullRule,
		'way', fullRule,
		'rel', fullRule].
	^ boundedRules inject: '' into: [:accumulator :rule | accumulator, rule]