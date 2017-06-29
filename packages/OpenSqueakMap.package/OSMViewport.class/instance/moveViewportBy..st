rendering
moveViewportBy: aDegreeVector

	self centerCoord: self centerCoord + aDegreeVector.
	self chunkManager changed.
