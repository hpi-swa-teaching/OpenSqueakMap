marking
setMarkerAttributes

	self
		color: (OSMRenderObject defaultMarkerRenderAttributes at: #fillColor);
		borderWidth: (OSMRenderObject defaultMarkerRenderAttributes at: #borderWidth);
		borderColor: (OSMRenderObject defaultMarkerRenderAttributes at: #color).