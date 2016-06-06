as yet unclassified
initialize 

	super initialize.
	self viewport: (Morph new
		extent: self class viewportExtent;
		openInWorld).
	self viewport clipSubmorphs: true.
	self overlay: (OSMOverlay withBounds: (self viewport bounds) on: self).
	self viewport addMorph: self overlay.
	self chunkManager: OSMChunkManager new.