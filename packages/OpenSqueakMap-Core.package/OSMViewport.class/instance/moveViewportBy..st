rendering
moveViewportBy: aDegreeVector

	self offset setOrigin: (self offset origin + aDegreeVector) corner: (self offset corner + aDegreeVector).	
	self redraw.