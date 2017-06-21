updating
update: aSymbol

	super update: aSymbol.
	
	self attributeControls delete.
	attributeControls := nil.
	self attributeList
		addMorphBack: self attributeControls.
	
	