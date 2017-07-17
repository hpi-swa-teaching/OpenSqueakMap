configuration
applyRenderConfiguration

	self chunks do: [:chunk | chunk applyConfiguration: self renderConfiguration].