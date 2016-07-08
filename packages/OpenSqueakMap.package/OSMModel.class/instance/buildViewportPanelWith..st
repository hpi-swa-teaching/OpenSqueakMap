as yet unclassified
buildViewportPanelWith: aBuilder

	| panelSpec |
	panelSpec := aBuilder pluggableOSMPanelSpec new.
	^ panelSpec
		name: #panel;
		model: self;
		frame: (0@0 corner: 1@1).