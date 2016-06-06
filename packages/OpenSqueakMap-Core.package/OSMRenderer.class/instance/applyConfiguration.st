rendering
applyConfiguration
	
	self chunks do: [:chunk |
		self configuration applyToAll: chunk renderObjects].