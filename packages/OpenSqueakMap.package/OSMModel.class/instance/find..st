actions
find: aString

	self viewport topLeftCoord: (OSMChunk findPointAt: aString asString).
	self viewport chunkManager
		invalidateChunks;
		changed.