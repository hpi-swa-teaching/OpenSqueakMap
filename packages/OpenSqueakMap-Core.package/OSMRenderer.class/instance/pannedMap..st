rendering
pannedMap: aPoint

	self offset: self offset + aPoint.	
	self redraw.
	^ self mapMorph.