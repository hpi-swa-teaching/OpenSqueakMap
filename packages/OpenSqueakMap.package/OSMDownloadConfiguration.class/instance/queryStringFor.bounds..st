as yet unclassified
queryStringFor: aZoomLevel bounds: aRectangle

	| boundsString boundedRules combinedRules eligibleRules | 
	boundsString := self boundsStringFor: aRectangle.
	eligibleRules := OrderedCollection new.
	self rules keysAndValuesDo: [:aKey :aValue | (aKey includes: aZoomLevel) ifTrue: [eligibleRules addAll: aValue]].
	boundedRules := eligibleRules collect: [:r | 
		| fullRule |
		fullRule := r queryString, boundsString, ';'.
		'node', fullRule,
		'way', fullRule,
		'rel', fullRule].
	combinedRules := boundedRules inject: '' into: [:accumulator :rule | accumulator, rule].
	^ '(' , combinedRules , '); (._;>;); out;'.