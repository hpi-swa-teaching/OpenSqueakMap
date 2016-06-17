rendering
panDown
	
	| offset |
	offset := self
		getPanVectorFrom: (self extent x / 2) @ (self extent y) 
		to: (self extent x / 2) @ (self extent y / 2).
	self moveViewportBy: offset.