rendering
moveViewportBy: aDegreeVector

	self topLeftCoord: self topLeftCoord + aDegreeVector.
	self chunkManager didChangeOn: self.