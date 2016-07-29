instance creation
on: aParser with: aDictionary

	| state |
	state := super on: aParser.
	state way id: (aDictionary at: #id).
	^ state.