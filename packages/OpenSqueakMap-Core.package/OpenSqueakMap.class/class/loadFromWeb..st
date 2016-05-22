as yet unclassified
loadFromWeb: aRectangle

	^ (self load: (OSMWebLoader new
		downloadBoundedMapS: aRectangle bottom
		w: aRectangle left
		n: aRectangle top
		e: aRectangle right)) bounds: aRectangle.