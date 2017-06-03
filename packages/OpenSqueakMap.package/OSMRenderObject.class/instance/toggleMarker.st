marking
toggleMarker
	
	(OSMRenderObject markerCollection includes: self dataObject id)
		ifTrue: [self removeMarker]
		ifFalse: [self addMarkerOnIntialize: false].