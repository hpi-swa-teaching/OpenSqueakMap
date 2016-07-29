building
buildWith: builder

	| windowSpec window |
	windowSpec := self buildWindowWith: builder.
	windowSpec := self addWidgetsWith: builder to: windowSpec.
	window := builder build: windowSpec.
	self panel: (builder widgetAt: #panel).
	self panel layoutPolicy: TableLayout new.
	^ window.