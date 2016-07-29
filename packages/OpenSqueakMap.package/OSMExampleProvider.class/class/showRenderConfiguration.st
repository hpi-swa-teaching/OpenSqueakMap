Examples
showRenderConfiguration
	"This exampe shows how to compose configurations and rules for rendering"

	| osm |
	osm := OpenSqueakMap show: 13.12695@52.39338.

	^ osm renderConfiguration: 
		(OSMRenderConfiguration new
			add: (OSMStaticRule 
				for: [:x | x dataObject isCarway] 
				setAttributes: {
					#visible -> true.
					#color -> Color orange.
					#borderWidth -> 8});
			add: (OSMStaticRule 
				for: [:x | x dataObject isFootway] 
				setAttributes: {
					#visible -> true.
					#color -> Color red.
					#borderWidth -> 3});
			add: (OSMStaticRule 
				for: [:x | x dataObject isBuilding] 
				setAttributes: {
					#visible -> true.
					#color -> Color darkGray.
					#fillColor -> Color lightGray.
					#borderWidth -> 1.
					#minZoom -> 19})).