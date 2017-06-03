marking
removeMarker
	
	OSMRenderObject markerCollection remove: self dataObject id ifAbsent: [].
	self
		removeMarkerDescription;
		setRenderAttributes.