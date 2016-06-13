rendering
moveViewportBy: aDegreeVector

	self coordBounds setOrigin: (self coordBounds origin + aDegreeVector) corner: (self coordBounds corner + aDegreeVector).	
	self redraw.