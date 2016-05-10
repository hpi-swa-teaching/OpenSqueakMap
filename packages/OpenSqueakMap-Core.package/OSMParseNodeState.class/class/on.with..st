as yet unclassified
on: aParser with: aDictionary

	| tmp |
	tmp := super on: aParser with: aDictionary.
	tmp node id: (aDictionary at: #id);
		longitude: ((aDictionary at: #lon) asNumber);
		latitude: ((aDictionary at: #lat) asNumber).
	^ tmp.	
	