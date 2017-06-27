rendering
addWayMorph: aMorph
	| streetseparator |
	
	self wayMorphs at: aMorph id put: aMorph.
	self viewport addMorph: aMorph.

	streetseparator := (aMorph tags at: #highway ifAbsent: []).
	streetseparator ifNotNil: [self selectStreetsToShow: aMorph.].
	
	aMorph
		on: #startDrag send: #startPanning to: self viewport;
		on: #mouseUp send: #endPanning to: self viewport;
		on: #mouseStillDown send: #continuePanning to: self viewport.