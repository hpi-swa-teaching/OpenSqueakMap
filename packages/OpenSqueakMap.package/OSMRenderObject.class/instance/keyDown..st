event handling
keyDown: anEvent
	
	anEvent keyCharacter = $1
		ifTrue: [self toggleMarker].