defaults
defaultConfiguration

	^ OSMRenderConfiguration new
		name: 'defaultConfiguration';
		add: (OSMStaticRule 
			for: [:x | x dataObject isCarway] 
			setAttributes: {
				#visible -> true.
				#color -> Color yellow lighter.
				#borderWidth -> 5});
		add: (OSMStaticRule 
			for: [:x | x dataObject isFootway] 
			setAttributes: {
				#visible -> true.
				#color -> Color yellow.
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
