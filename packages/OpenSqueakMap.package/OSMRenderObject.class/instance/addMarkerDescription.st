marking
addMarkerDescription
	
	| des |
	des := UpdatingStringMorph contents: 'This is a Marker'.
	des 
		position: self position.
	self addMorph: des inFrontOf: self.