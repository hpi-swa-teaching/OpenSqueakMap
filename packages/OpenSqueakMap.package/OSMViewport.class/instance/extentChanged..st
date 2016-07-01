accessing
extentChanged: aPoint

	self chunkManager ifNotNil: [
		self chunkManager didChangeOn: self].
	super extentChanged: aPoint.