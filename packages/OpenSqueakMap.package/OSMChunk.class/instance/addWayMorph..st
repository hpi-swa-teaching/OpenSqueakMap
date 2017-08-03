rendering
addWayMorph: aMorph

	self wayMorphs at: aMorph id put: aMorph.
	self viewport addMorphBack: aMorph.
	(self checkForStreet: aMorph)
		ifTrue: [self handleStreetMorph: aMorph].
	aMorph
		on: #startDrag send: #startPanning to: self viewport;
		on: #mouseUp send: #endPanning to: self viewport;
		on: #mouseStillDown send: #continuePanning to: self viewport.