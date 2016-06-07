rendering
panDown
	
	| offset |
	offset := self
		getPanVectorFrom: (self viewport extent x / 2) @ (self viewport extent y) 
		to: (self viewport extent x / 2) @ (self viewport extent y / 2).
	self moveViewportBy: offset.