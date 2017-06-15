marking
addMarkerMorph: aString
	
	| markerDescription |
	markerDescription := OSMTextMorph new.
	markerDescription
		contents: aString;
		position: self position.
	self addMorph: markerDescription.