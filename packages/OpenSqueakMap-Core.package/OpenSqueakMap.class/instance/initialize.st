as yet unclassified
initialize 

	super initialize.
	self buildWindow.
	self chunkManager progressBar: OSMProgressMorph new.
	"progressBar center: osm viewport center.
	osm viewport addMorph: progressBar."
	self viewport addMorph: self chunkManager progressBar hide.
	self chunkManager didChangeOn: self viewport.