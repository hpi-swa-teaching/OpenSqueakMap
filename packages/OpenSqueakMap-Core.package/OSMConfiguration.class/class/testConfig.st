as yet unclassified
testConfig

	^ OSMConfiguration new
		add: (OSMConfigurationRule 
			for: [:x | x osmEntity isHighway] 
			setAttributes: {
				#visible -> true.
				#color -> Color yellow.
				#borderWidth -> 5});
		add: (OSMConfigurationRule 
			for: [:x | x osmEntity isBuilding] 
			setAttributes: {
				#visible -> true.
				#color -> Color red.
				#borderWidth -> 2.
				#minZoom -> 17});
		add: (OSMConfigurationRule 
			for: [:x | x osmEntity isHumanUsedLand] 
			setAttributes: {
				#visible -> true.
				#color -> Color red.
				#borderWidth -> 5.
				#maxZoom -> 16}).
