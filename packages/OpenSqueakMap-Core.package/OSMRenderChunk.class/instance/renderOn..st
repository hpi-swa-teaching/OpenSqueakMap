as yet unclassified
renderOn: anOSMRenderer 

	self viewport: anOSMRenderer.
	self position: (self offset - self viewport offset + (self viewport mapMorph origin)).
	
	self objectsAtCurrentZoomLevel do: [:x | x renderOn: anOSMRenderer].
	
	(self viewport containsMorph: self) ifFalse: [
		self viewport mapMorph addMorph: self].
	

	