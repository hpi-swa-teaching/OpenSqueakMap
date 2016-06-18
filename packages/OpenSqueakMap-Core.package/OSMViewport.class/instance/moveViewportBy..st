rendering
moveViewportBy: aDegreeVector

	self coordBounds: (Rectangle origin: (self coordBounds origin + aDegreeVector) corner: (self coordBounds corner + aDegreeVector)).
	self chunkManager didChangeOn: self redrawChunks: false.