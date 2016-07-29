events
invalidateChunks 

	self chunks do: [:chunk | chunk shouldRedraw: true].