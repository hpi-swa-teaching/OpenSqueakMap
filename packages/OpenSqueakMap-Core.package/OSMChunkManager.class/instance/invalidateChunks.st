as yet unclassified
invalidateChunks 

	self chunks do: [:chunk | chunk dirty: true].