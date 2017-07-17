actions
find: aString

	self viewport centerCoord: (OSMChunk findPointAt: aString asString).
	self viewport chunkManager
		invalidateChunks;
		changed.