helper
checkIf: aString shouldBeShownAtActualZoomlevel: aSet

	(aSet detect: [:aStreetType | aStreetType = aString] ifNone: [])
	ifNotNil: [^ true].
	^ false.