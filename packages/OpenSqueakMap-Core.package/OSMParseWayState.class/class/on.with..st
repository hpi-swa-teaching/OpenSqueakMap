as yet unclassified
on: aParser with: aDictionary

	| tmp |
	tmp := super on: aParser with: aDictionary.
	tmp way id: (aDictionary at: #id).
	^ tmp.