defaults
defaultConfiguration

	^ OSMRenderConfiguration new
		name: 'defaultConfiguration';
		at: 'carway' put: (OSMStaticRule 
			for: [:x | x dataObject isCarway] 
			setAttributes: ((Dictionary new)
				add: #visible -> true;
				add: #color -> Color yellow lighter;
				add: #borderWidth -> 5;
				yourself));
		at: 'footway' put: (OSMStaticRule 
			for: [:x | x dataObject isFootway] 
			setAttributes: ((Dictionary new)
				add: #visible -> true;
				add: #color -> Color yellow;
				add: #borderWidth -> 2;
				yourself));
		at: 'building' put: (OSMStaticRule 
			for: [:x | x dataObject isBuilding]
			setAttributes: ((Dictionary new)
				add: #visible -> true;
				add: #color -> Color darkGray;
				add: #fillColor -> Color lightGray;
				add: #borderWidth -> 1;
				add: #minZoom -> 16;
				yourself));
		at: 'water' put: (OSMStaticRule 
			for: [:x | x dataObject isWater]
      		setAttributes: ((Dictionary new)
				add: #visible -> true;
				add: #color -> Color blue;
				add: #fillColor -> Color blue;
				add: #borderWidth -> 1;
				yourself));
		at: 'humanUsedLand' put: (OSMStaticRule 
			for: [:x | x dataObject isHumanUsedLand] 
			setAttributes: ((Dictionary new)
				add: #visible -> true;
				add: #color -> Color darkGray;
				add: #borderWidth -> 2;
				add: #maxZoom -> 15;
				yourself)).
