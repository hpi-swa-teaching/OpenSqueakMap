helper
alignStreetmorph
	
	self displayedName
		fontName: self class defaultStreetFont size: self class defaultFontSize;
		position: self defaultPositionOfStreetmorph;
		rotationDegrees: self calculateRotationDegree.