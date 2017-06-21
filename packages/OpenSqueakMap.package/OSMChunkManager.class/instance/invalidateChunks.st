events
invalidateChunks 

	self cachedChunks do: [:chunk | chunk shouldRedraw: true].