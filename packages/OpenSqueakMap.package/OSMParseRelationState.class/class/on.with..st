instance creation
on: aParser with: aDictionary

	| state |
	state := super on: aParser.
	state relation id: (aDictionary at: #id).
	^ state.