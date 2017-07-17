actions
changeRenderConfiguration 

	(OSMRenderConfigurationBrowserMorph 
		withModel: (OSMRenderConfigurationBrowser withViewport: self viewport))
		openInWorld;
		topLeft: self viewport topRight.