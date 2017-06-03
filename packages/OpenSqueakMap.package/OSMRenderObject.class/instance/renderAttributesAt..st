accessing
renderAttributesAt: aSymbol
	
	^ self renderAttributes at: aSymbol ifAbsent: [self class defaultRenderAttributes at: aSymbol].