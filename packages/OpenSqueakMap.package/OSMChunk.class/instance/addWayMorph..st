rendering
addWayMorph: aMorph

	| streetSeparator |	
	self wayMorphs at: aMorph id put: aMorph.
	self viewport addMorphBack: aMorph.

	streetSeparator := (aMorph tags at: #highway ifAbsent: []).
	streetSeparator 
		ifNotNil: [
			self selectStreetsToShow: aMorph.
			"Some render objects do not have a streetname"
			aMorph displayedName 
				ifNotNil: [self streetnames add: aMorph displayedName]].
		
	aMorph
		on: #startDrag send: #startPanning to: self viewport;
		on: #mouseUp send: #endPanning to: self viewport;
		on: #mouseStillDown send: #continuePanning to: self viewport.