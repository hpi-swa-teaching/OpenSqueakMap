rendering
extentChanged: aPoint

	super extentChanged: aPoint.
	self chunkManager ifNotNil: [
		self chunkManager changed].