rendering
panLeft
	
	| offset |
	offset := self
		getPanVectorFrom: 0 @ (self height / 2) 
		to: (self width / 2) @ (self height / 2).
	self moveViewportBy: offset.