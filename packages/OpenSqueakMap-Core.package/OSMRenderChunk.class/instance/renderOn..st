as yet unclassified
renderOn: anOSMRenderer 

	self viewport: anOSMRenderer.
	
	self objectsAtCurrentZoomLevel do: [:x | x renderOn: self].
	
	(self viewport containsMorph: self) ifFalse: [
		self viewport addMorph: self].

	