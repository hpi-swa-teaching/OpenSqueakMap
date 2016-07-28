as yet unclassified
invalidateChunks 

	self chunks do: [:chunk | chunk shouldRedraw: true].