as yet unclassified
defaultConfiguration

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
				#minZoom -> 16});
		add: (OSMStaticRule 
			for: [:x | x osmEntity isHumanUsedLand] 
			setAttributes: {
				#visible -> true.
				#color -> Color darkGray.
				#borderWidth -> 2.
				#maxZoom -> 15}).
