configuration
applyRenderConfiguration

	self cachedChunks do: [:chunk | chunk applyConfiguration: self renderConfiguration].