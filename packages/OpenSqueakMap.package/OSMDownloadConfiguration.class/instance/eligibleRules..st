as yet unclassified
eligibleRules: aZoomLevel 

	^ (self rules associationsSelect: [:ass | ass key <= aZoomLevel]) values.