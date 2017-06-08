morphic
showStreetName
	| streetseparator |
	streetseparator := (self tags at: #highway ifAbsent: []).
	streetseparator ifNotNil: 
		[self displayedName: (self tags at: #name ifAbsent: ['']) asStringMorph.
		self displayedName 
			position: (self  position x) + (self width / 2)  @ (self position y);
			fontName: 'BitstreamVeraSans' size: 20.
		self addMorph: self displayedName inFrontOf: self.]
	
	
		
	
	