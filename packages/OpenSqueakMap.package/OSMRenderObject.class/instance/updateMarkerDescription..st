marking
updateMarkerDescription: aString

	self isMarked
		 ifTrue: [(self class markers includesKey: self dataObject id) 
			ifTrue: [self class markers at: self dataObject id put: aString]].