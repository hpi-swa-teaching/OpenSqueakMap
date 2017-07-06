defaults
defaultConfiguration

	^ OSMRenderConfiguration new
		name: 'defaultConfiguration';
		at: 'carway' put: (OSMStaticRule 
			for: [:x | x dataObject isCarway] 
			setAttributes: ((Dictionary new)
				add: #visible -> true;
				add: #color -> Color white;
				add: #borderWidth -> 9;
				yourself));
		at: 'footway' put: (OSMStaticRule 
			for: [:x | x dataObject isFootway] 
			setAttributes: ((Dictionary new)
				add: #visible -> true;
				add: #color -> (Color r: 0.81 g: 0.82 b: 0.86);
				add: #borderWidth -> 2;
				yourself));
		at: 'building' put: (OSMStaticRule 
			for: [:x | x dataObject isBuilding]
			setAttributes: ((Dictionary new)
				add: #visible -> true;
				add: #color -> (Color r: 0.84 g: 0.85 b: 0.84);
				add: #fillColor -> (Color r: 0.93 g: 0.93 b: 0.93);
				add: #borderWidth -> 1;
				add: #minZoom -> 16;
				yourself));
		at: 'water' put: (OSMStaticRule 
			for: [:x | x dataObject isWater]
      		setAttributes: ((Dictionary new)
				add: #visible -> true;
				add: #color -> (Color r: 0.43 g: 0.64 b: 0.94);
				add: #fillColor -> (Color r: 0.45 g: 0.81 b: 0.95);
				add: #borderWidth -> 1;
				yourself)).
