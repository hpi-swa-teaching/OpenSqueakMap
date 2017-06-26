marking
removeMarker
	
	OSMRenderObject markers removeKey: self dataObject id ifAbsent: [].
	self
		removeMarkerMorph;
		setRenderAttributes.