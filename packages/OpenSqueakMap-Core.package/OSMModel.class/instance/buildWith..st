as yet unclassified
buildWith: builder

	| windowSpec |
	windowSpec := self buildWindowWith: builder specs: {
		(0@0 corner: 1@1) -> [self buildMapWith: builder]}.
	windowSpec extent: self initialExtent.
	^ builder build: windowSpec.
