accessing
boundsStringFor: aRectangle

	^ '(',
		(aRectangle bottom roundTo: 0.0001), ',',
		(aRectangle left roundTo: 0.0001), ',',
		(aRectangle top roundTo: 0.0001), ',', 
		(aRectangle right roundTo: 0.0001), ')'.