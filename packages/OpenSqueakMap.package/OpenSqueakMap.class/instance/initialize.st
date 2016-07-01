as yet unclassified
initialize 

	super initialize.
	self buildWindow.
	self viewport addMorph: self chunkManager progressBar hide.
	self chunkManager didChangeOn: self viewport.