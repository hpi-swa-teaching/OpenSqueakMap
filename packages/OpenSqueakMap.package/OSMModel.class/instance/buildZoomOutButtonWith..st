as yet unclassified
buildZoomOutButtonWith: aBuilder

	^ (self buildButtonWith: aBuilder)
		label: '-';
		action: #zoomOut.