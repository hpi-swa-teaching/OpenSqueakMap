as yet unclassified
show: aRectangle

	| osm |
	osm := self new viewport: (OSMViewport on: aRectangle).
		"TODO pls.."
	osm overlay: (OSMOverlay withBounds: (osm viewport bounds) on: osm viewport).
	osm viewport addMorph: osm overlay.
	osm chunkManager didChangeOn: osm viewport.
	^ osm.