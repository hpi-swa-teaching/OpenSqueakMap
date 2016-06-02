as yet unclassified
updateMapMorph

	self addMapMorph: self renderer mapMorph.
	self chunkManager didChangeViewportOn: self renderer.