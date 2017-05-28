rendering
addWayMorph: aMorph

	self wayMorphs at: aMorph id put: aMorph.
	self viewport addMorph: aMorph.
	aMorph
		on: #startDrag send: #startPanning to: self viewport;
		on: #mouseUp send: #endPanning to: self viewport;
		on: #mouseStillDown send: #continuePanning to: self viewport.