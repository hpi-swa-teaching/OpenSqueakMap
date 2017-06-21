accessing
viewport: anObject
	
	viewport := anObject.
	self cachedChunks do: [:chunk | anObject addChunk: chunk].