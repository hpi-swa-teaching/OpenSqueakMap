as yet unclassified
at: aZoomLevel add: aRule

	(self rules at: aZoomLevel ifAbsentPut: [OrderedCollection new]) add: aRule.