as yet unclassified
addViewport: aViewport

	self viewport: aViewport.
	self panel addMorph: aViewport.
	aViewport hResizing: #spaceFill.
	aViewport vResizing: #spaceFill.