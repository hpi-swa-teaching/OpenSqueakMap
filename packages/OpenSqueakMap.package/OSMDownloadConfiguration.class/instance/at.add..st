as yet unclassified
at: aZoomLevel add: aRule
	"The rule will apply to zoomLevels greater than or equal to aZoomLevel"
	
	(self rulesForZoomLevel at: aZoomLevel ifAbsentPut: [OrderedCollection new]) add: aRule.