rendering
extentChanged: aPoint

	super extentChanged: aPoint.
	self chunkManager ifNotNil: [
		self chunkManager didChangeOn: self].