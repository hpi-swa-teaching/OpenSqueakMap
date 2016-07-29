query building
queryStringFor: aZoomLevel bounds: aRectangle

	| applicableRules queryString |
	applicableRules := self rulesApplyingTo: aZoomLevel.	
	queryString := self buildQueryFrom: applicableRules forBounds: aRectangle.
	^ '(', queryString, ');', self class recursionOperator, self class printOperator.