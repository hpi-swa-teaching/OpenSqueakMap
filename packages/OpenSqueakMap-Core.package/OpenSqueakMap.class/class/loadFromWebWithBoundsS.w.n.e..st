as yet unclassified
loadFromWebWithBoundsS: southNumber w: westNumber n: northNumber e: eastNumber

	^ self load: (
		OSMWebLoader new
			downloadBoundedMapS: southNumber 
			w: westNumber 
			n: northNumber 
			e: eastNumber).