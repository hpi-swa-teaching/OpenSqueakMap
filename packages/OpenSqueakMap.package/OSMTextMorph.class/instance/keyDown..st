event handling
keyDown: anEvent
	
	anEvent keyCharacter = $$
		ifTrue: [
			self owner updateMarkerDescription: self text.
			anEvent hand releaseKeyboardFocus: self].