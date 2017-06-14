initialization
initializeWithModel: aRenderConfigurationBrowser

	super initialize.
	self
		model: aRenderConfigurationBrowser; 
		setLabel: 'Change Render Configuration';
		addMorph: self mainPanel fullFrame: self mainPanelLayoutFrame.