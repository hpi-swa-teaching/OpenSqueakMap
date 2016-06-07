rendering
panLeft
	
	| offset |
	offset := self
		getPanVectorFrom: 0 @ (self viewport extent y / 2) 
		to: (self viewport extent x / 2) @ (self viewport extent y / 2).
	self moveViewportBy: offset.