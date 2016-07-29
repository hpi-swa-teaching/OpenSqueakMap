testing
isOpen

	^ self nodes
		ifEmpty: [false]
		ifNotEmpty: [self nodes first ~= self nodes last].