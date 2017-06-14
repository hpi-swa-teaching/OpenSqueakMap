building
addWidgetsWith: builder to: aSpec

	aSpec children
		add: (self buildViewportPanelWith: builder);
		add: (self buildLeftButtonWith: builder);
		add: (self buildUpButtonWith: builder);
		add: (self buildRightButtonWith: builder);
		add: (self buildDownButtonWith: builder);
		add: (self buildZoomInButtonWith: builder);
		add: (self buildZoomOutButtonWith: builder);
		add: (self buildChangeRenderConfigurationButtonWith: builder);
		add: (self buildFindInputFieldWith: builder).
	^ aSpec.