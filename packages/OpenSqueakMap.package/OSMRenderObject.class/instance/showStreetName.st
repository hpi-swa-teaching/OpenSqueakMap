morphic
showStreetName
	| streetseparator deltaX deltaY |
	streetseparator := (self tags at: #highway ifAbsent: []).
	streetseparator ifNotNil: 
		[self displayedName: (self tags at: #name ifAbsent: ['']) asStringMorph.
		self displayedName
			fontName: 'BitstreamVeraSans' size: 20;
			position: self midpoint - ((self displayedName width / 2) @ (self displayedName height / 2)).
		self addMorphFront: self displayedName.
		deltaX := (self firstVertex x -  self lastVertex x) abs.
		deltaY := self firstVertex y -  self lastVertex y.
		(self firstVertex x -  self lastVertex x) < 0 ifTrue: [deltaY := -1 * deltaY].
		self displayedName ifNotNil: [self displayedName rotationDegrees: (deltaY arcTan: deltaX) * 180 / Float pi].]
	
	
		
	
	