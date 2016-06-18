as yet unclassified
show: aPoint at: aZoomLevel

	| osm progressBar |
	osm := self new.
	osm viewport: (OSMViewport topLeft: aPoint zoom: aZoomLevel chunkManager: osm chunkManager).
	osm viewport openInWorld.
	osm overlay: (OSMOverlay withBounds: (osm viewport bounds) on: osm viewport).
	osm viewport addMorph: osm overlay.
	progressBar := ProgressMorph new.
	progressBar center: osm viewport center.
	osm viewport addMorph: progressBar.
	osm chunkManager didChangeOn: osm viewport redrawChunks: false "progress: progressBar".
	progressBar delete.
	^ osm.