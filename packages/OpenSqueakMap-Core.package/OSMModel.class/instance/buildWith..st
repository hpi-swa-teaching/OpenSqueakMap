as yet unclassified
buildWith: builder

	| windowSpec window |
	windowSpec := self buildWindowWith: builder specs: {
		(0@0 corner: 1@1) -> [self buildViewportWith: builder]}.
	windowSpec extent: self initialExtent.
	window := builder build: windowSpec.
	self scrollPane: (builder widgetAt: #scrollPane).
	window extent: self viewport extent + (20@40).
	^ window.