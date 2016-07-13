as yet unclassified
at: aZoomLevelInterval add: aRule

	(self rules at: aZoomLevelInterval ifAbsentPut: [OrderedCollection new]) add: aRule.