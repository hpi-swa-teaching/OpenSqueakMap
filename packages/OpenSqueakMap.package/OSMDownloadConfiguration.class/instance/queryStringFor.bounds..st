as yet unclassified
queryStringFor: aZoomLevel bounds: aRectangle

	| boundedRules combinedRules eligibleRules |
	eligibleRules := self eligibleRules: aZoomLevel.
	boundedRules := self boundRules: eligibleRules bounds: aRectangle.
	combinedRules := self concatenateRules: boundedRules.
	^ '(', combinedRules, ');', self recursionOperator, self printOperator.