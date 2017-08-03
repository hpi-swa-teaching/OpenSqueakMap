handling - content
characters: aString

	self reading 
		ifTrue: [aString = self defaultString 
					ifFalse: [self errorString: self errorString, Character cr, aString]].