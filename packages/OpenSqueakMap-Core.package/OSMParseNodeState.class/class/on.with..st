as yet unclassified
on: aParser with: aDictionary

	| state |
	state := super on: aParser. 
	state node
		id: (aDictionary at: #id);
		longitude: ((aDictionary at: #lon) asNumber);
		latitude: ((aDictionary at: #lat) asNumber).
	^ state.