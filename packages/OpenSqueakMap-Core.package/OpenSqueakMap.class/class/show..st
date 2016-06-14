as yet unclassified
show: aRectangle

	| osm progressBar |
	osm := self new viewport: (OSMViewport on: aRectangle).
	osm overlay: (OSMOverlay withBounds: (osm viewport bounds) on: osm viewport).
	osm viewport addMorph: osm overlay.

	progressBar := ProgressMorph new.
	progressBar center: osm viewport center.
	osm viewport addMorph: progressBar.

	osm chunkManager didChangeOn: osm viewport progress: progressBar.
	
	progressBar delete.
	^ osm.