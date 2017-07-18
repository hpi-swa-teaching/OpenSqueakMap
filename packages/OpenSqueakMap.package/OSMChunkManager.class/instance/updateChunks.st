events
updateChunks
	"Iterates over cached chunks, if necessary adds copy of a cached chunk to self chunks."
	
	| newChunk index |
	self class cachedChunks do: [:chunk | 
		index := chunk index.
		(self chunks includesKey: index) 
			ifFalse: [
				newChunk := OSMChunk withIndex: index on: self.
				newChunk dataSet: chunk dataSet.
				self processDataSetOf: newChunk.
				self chunks at: index put: newChunk]].