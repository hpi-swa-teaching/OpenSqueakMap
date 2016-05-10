as yet unclassified
on: aParser with: aDictionary

	| tmp |
	tmp := super on: aParser with: aDictionary.
	tmp relation id: (aDictionary at: #id).
	^ tmp.