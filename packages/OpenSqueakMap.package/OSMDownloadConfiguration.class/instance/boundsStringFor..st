accessing
boundsStringFor: aRectangle
	"The rounding is an ugly workaround to avoid 0.00001 evaluating to 1.0e-5"

	^ '(',
		(aRectangle bottom roundTo: 0.0001), ',',
		(aRectangle left roundTo: 0.0001), ',',
		(aRectangle top roundTo: 0.0001), ',', 
		(aRectangle right roundTo: 0.0001), ')'.