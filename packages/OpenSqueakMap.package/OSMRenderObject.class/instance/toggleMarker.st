marking
toggleMarker
	
	(OSMRenderObject markers includesKey: self dataObject id)
		ifTrue: [self removeMarker]
		ifFalse: [self addMarkerOnIntialize: false].