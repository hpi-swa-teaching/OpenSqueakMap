as yet unclassified
panDown

	"self renderer changeOffsetBy: 0@(self viewport extent y / 2)."
	
	| offset |
	offset := self renderer
		getPanVectorFrom: (self viewport extent x / 2) @ (self viewport extent y) 
		to: (self viewport extent x / 2) @ (self viewport extent y / 2).
	self renderer moveViewportBy: offset.
	self updateMapMorph.