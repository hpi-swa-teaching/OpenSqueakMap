as yet unclassified
buildZoomInButtonWith: aBuilder

	^ (self buildButtonWith: aBuilder)
		label: '+';
		action: #zoomIn.