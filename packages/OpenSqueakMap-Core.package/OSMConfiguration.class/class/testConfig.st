as yet unclassified
testConfig

	^ OSMConfiguration new
		add: (OSMStaticRule 
			for: [:x | x osmEntity isCarway] 
			setAttributes: {
				#visible -> true.
				#color -> Color yellow lighter.
				#borderWidth -> 5});
		add: (OSMStaticRule 
			for: [:x | x osmEntity isFootway] 
			setAttributes: {
				#visible -> true.
				#color -> Color yellow.
				#borderWidth -> 2});
		add: (OSMStaticRule 
			for: [:x | x osmEntity isBuilding] 
			setAttributes: {
				#visible -> true.
				#color -> Color darkGray.
				#fillColor -> Color lightGray.
				#borderWidth -> 1.
				#minZoom -> 17});
		add: (OSMStaticRule 
			for: [:x | x osmEntity isHumanUsedLand] 
			setAttributes: {
				#visible -> true.
				#color -> Color red.
				#borderWidth -> 5.
				#maxZoom -> 16}).
