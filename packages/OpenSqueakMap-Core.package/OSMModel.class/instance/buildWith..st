as yet unclassified
buildWith: builder

	| windowSpec window |
	windowSpec := self buildWindowWith: builder specs: {
		(0@0 corner: 1@1) -> [self buildViewportWith: builder].
		(LayoutFrame fractions: (0@0.5 corner: 0@0.5) offsets: (0@(self buttonHeight / 2 negated) corner: self buttonWidth @ (self buttonHeight / 2))) -> [self buildLeftButtonWith: builder].
		(LayoutFrame fractions: (0.5@0 corner: 0.5@0) offsets: ((self buttonWidth / 2 negated) @ 0 corner: (self buttonWidth / 2) @ self buttonHeight)) -> [self buildUpButtonWith: builder].
		(LayoutFrame fractions: (1@0.5 corner: 1@0.5) offsets: ((self buttonWidth negated) @ (self buttonHeight / 2 negated) corner: 0 @ (self buttonHeight / 2))) -> [self buildRightButtonWith: builder].
		(LayoutFrame fractions: (0.5@1 corner: 0.5@1) offsets: ((self buttonWidth / 2 negated) @ (self buttonHeight negated) corner: (self buttonWidth / 2) @ 0)) -> [self buildDownButtonWith: builder].
		(LayoutFrame fractions: (0@0 corner: 0@0) offsets: (0@0 corner: self buttonWidth @ self buttonHeight)) -> [self buildZoomInButtonWith: builder].
		(LayoutFrame fractions: (0@0 corner: 0@0) offsets: (self buttonWidth @0 corner: 2 * self buttonWidth @ self buttonHeight)) -> [self buildZoomOutButtonWith: builder].
		}.
	windowSpec extent: self initialExtent.
	window := builder build: windowSpec.
	self scrollPane: (builder widgetAt: #scrollPane).
	window extent: self viewport extent + (20@40).
	^ window.