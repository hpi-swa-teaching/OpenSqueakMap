accessing
setCurrentValueFor: anAttribute To: aValue

	| renderConfiguration rule |
	renderConfiguration := self renderConfiguration.
	rule := renderConfiguration rules at: self selectedType.
	rule basicAttributes at: anAttribute put: aValue.
	renderConfiguration at: self selectedType put: rule.
	
	self viewport chunkManager 
		renderConfiguration: renderConfiguration;
		applyRenderConfiguration;
		invalidateChunks;
		didChangeOn: self viewport.