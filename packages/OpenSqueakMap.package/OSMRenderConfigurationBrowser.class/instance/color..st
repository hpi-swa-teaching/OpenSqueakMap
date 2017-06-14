accessing
color: aColor

	| chunkManager renderConfiguration |
	chunkManager := self viewport chunkManager.
	renderConfiguration := OSMRenderConfiguration new
		name: 'customConfiguration';
		add: (OSMStaticRule 
			for: [:x | x dataObject isCarway] 
			setAttributes: {
				#visible -> true.
				#color -> aColor.
				#borderWidth -> 5});
		add: (OSMStaticRule 
			for: [:x | x dataObject isFootway] 
			setAttributes: {
				#visible -> true.
				#color -> aColor.
				#borderWidth -> 2});
		add: (OSMStaticRule 
			for: [:x | x dataObject isBuilding] 
			setAttributes: {
				#visible -> true.
				#color -> Color darkGray.
				#fillColor -> Color lightGray.
				#borderWidth -> 1.
				#minZoom -> 16});
		add: (OSMStaticRule 
			for: [:x | x dataObject isHumanUsedLand] 
			setAttributes: {
				#visible -> true.
				#color -> Color darkGray.
				#borderWidth -> 2.
				#maxZoom -> 15}).
	chunkManager 
		renderConfiguration: renderConfiguration;
		applyRenderConfiguration;
		invalidateChunks;
		didChangeOn: self viewport.