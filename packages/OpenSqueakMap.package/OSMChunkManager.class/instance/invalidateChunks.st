events
invalidateChunks 

	self class chunks do: [:chunk | chunk shouldRedraw: true].