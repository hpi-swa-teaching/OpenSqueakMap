as yet unclassified
buildViewportWith: aBuilder

	| viewportSpec |
	viewportSpec := aBuilder pluggableScrollPaneSpec new.
	^ viewportSpec
		name: #scrollPane;
		morphClass: OSMViewport;
		model: self.