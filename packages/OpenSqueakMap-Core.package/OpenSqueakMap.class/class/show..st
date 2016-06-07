as yet unclassified
show: aRectangle

	| osm |
	osm := self new
		viewport: (OSMViewport on: aRectangle).
		"TODO pls.."
	osm viewport addMorph: osm viewport render behind: osm overlay.
	osm overlay: (OSMOverlay withBounds: (osm viewport bounds) on: osm viewport).
	osm viewport addMorph: osm overlay.
	osm chunkManager didChangeViewportOn: osm viewport.
	^ osm.