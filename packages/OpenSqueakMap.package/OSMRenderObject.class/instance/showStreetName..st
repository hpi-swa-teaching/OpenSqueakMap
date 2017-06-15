morphic
showStreetName: aSet
	| streetType |
	"#highway is key for different street types"
	streetType := (self tags at: #highway ifAbsent: ['']).
	Transcript show: aSet.
	(aSet detect: [:aStreetType | aStreetType = streetType] ifNone: []) ifNotNil: 
		[self displayedName: (self tags at: #name ifAbsent: ['']) asStringMorph.
		self displayedName 
			position: (self  position x) + (self width / 2)  @ (self position y);
			fontName: 'BitstreamVeraSans' size: 20.
		self addMorph: self displayedName inFrontOf: self.]
	
	
		
	
	