accessing
renderAttributeAt: aSymbol
	
	^self renderAttributes at: aSymbol ifAbsent: [self class defaultAttributes at: aSymbol]