marking
addMarkerOnIntialize: aBoolean
	
	| markerDescription |
	markerDescription := 'Click to change name...'.
	aBoolean
		ifFalse: [OSMRenderObject markers at: self dataObject id put: markerDescription].
	self 
		setMarkerAttributes;
		addMarkerMorph: (OSMRenderObject markers at: self dataObject id ifAbsent: [markerDescription]).