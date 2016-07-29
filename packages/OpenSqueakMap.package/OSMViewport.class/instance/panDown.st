actions
panDown
	
	| offset |
	offset := self
		getPanVectorFrom: (self width / 2) @ (self height) 
		to: (self width / 2) @ (self height / 2).
	self moveViewportBy: offset.