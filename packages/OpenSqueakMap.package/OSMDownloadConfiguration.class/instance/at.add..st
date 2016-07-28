as yet unclassified
at: aZoomLevel add: aRule
	"If the current zoom level is >= aZoomLevel, the rule will apply"
	
	(self rules at: aZoomLevel ifAbsentPut: [OrderedCollection new]) add: aRule.