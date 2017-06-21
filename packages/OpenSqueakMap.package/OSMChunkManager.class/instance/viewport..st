accessing
viewport: anObject
	
	viewport := anObject.
	self class chunks do: [:chunk | anObject addChunk: chunk].