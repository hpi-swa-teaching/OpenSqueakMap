configuration
applyConfiguration
	
	self chunks do: [:chunk | chunk applyConfiguration: self configuration].