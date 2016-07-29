initialize
initialize 

	super initialize.
	self buildWindow.
	self window addMorph: self chunkManager progressBar hide.