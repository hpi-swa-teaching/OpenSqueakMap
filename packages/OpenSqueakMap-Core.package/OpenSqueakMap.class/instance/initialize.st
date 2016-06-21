as yet unclassified
initialize 

	super initialize.
	self viewport openInWorld.
	self overlay: (OSMOverlay withBounds: (self viewport bounds) on: self viewport).
	self viewport addMorph: self overlay.
	self chunkManager progressBar: OSMProgressMorph new.
	"progressBar center: osm viewport center.
	osm viewport addMorph: progressBar."
	self viewport addMorph: self chunkManager progressBar hide.
	self chunkManager didChangeOn: self viewport.