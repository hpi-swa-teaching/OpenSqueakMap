helper
initializeStreetmorph
	self displayedName: (self tags at: #name ifAbsent: ['']) asStringMorph.
	self owner addMorphFront: self displayedName.
		
					