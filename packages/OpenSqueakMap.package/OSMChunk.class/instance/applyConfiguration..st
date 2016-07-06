as yet unclassified
applyConfiguration: aConfiguration 

	aConfiguration applyToAll: self renderObjects.
	self dirty: true.