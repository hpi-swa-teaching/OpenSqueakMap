as yet unclassified
buildViewportWith: aBuilder

	| viewportSpec |
	viewportSpec := aBuilder pluggablePanelSpec new.
	^ viewportSpec
		name: #panel;
		model: self.