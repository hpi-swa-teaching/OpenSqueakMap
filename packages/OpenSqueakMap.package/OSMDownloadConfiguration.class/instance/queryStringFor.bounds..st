as yet unclassified
queryStringFor: aZoomLevel bounds: aRectangle

	| applicableRules queryString |
	applicableRules := self rulesApplyingTo: aZoomLevel.	
	queryString := self buildQueryFrom: applicableRules forBounds: aRectangle.
	^ '(', queryString, ');', self recursionOperator, self printOperator.