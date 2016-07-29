as yet unclassified
rulesApplyingTo: aZoomLevel 

	| eligibleRulesCollections |
	eligibleRulesCollections := (self rulesForZoomLevel associationsSelect: [:ass | ass key <= aZoomLevel]) values.
	^ eligibleRulesCollections inject: OrderedCollection new into: [:accum :value | accum addAll: value].