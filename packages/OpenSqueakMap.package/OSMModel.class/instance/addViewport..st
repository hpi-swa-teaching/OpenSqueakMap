building
addViewport: aViewport

	self viewport: aViewport.
	self panel addMorph: aViewport.
	aViewport 
		hResizing: #spaceFill;
		vResizing: #spaceFill.