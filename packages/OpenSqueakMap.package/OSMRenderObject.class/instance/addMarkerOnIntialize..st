marking
addMarkerOnIntialize: aBoolean
	
	aBoolean
		ifFalse: [OSMRenderObject markerCollection add: self dataObject id].
	self 
		setMarkerAttributes;
		addMarkerDescription.