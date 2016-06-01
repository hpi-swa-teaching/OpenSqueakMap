as yet unclassified
renderOn: anOSMRenderer 

	self renderer: anOSMRenderer.
	self position: (self offset - self renderer offset + (self renderer mapMorph origin)).
	
	self objectsAtCurrentZoomLevel do: [:x | x renderOn: anOSMRenderer].
	
	(self renderer containsMorph: self) ifFalse: [
		self renderer mapMorph addMorph: self].
	

	