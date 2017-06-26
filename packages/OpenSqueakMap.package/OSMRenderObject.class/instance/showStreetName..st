morphic
showStreetName: aSet
	| streetType deltaX deltaY |
	"#highway is key for different street types"
	streetType := (self tags at: #highway ifAbsent: ['']).
	(aSet detect: [:aStreetType | aStreetType = streetType] ifNone: []) ifNotNil:
	[self displayedName: (self tags at: #name ifAbsent: ['']) asStringMorph.
		self addMorphFront: self displayedName.
		deltaX := self firstVertex x -  self lastVertex x.
		deltaY := self firstVertex y -  self lastVertex y.
		deltaX < 0 ifTrue:
			[deltaX := deltaX negated.
			deltaY := deltaY negated].
		self displayedName
			fontName: 'BitstreamVeraSans' size: 20;
			position: self midpoint - ((self displayedName width / 2) @ (self displayedName height / 2));
			rotationDegrees: (deltaY arcTan: deltaX) * 180 / Float pi.]
