retrieve
getCurrentValueFor: anAttribute

	^ (self renderConfiguration rules at: self selectedType) basicAttributes 
		at: anAttribute
		ifAbsent: [self getDefaultValueFor: anAttribute].