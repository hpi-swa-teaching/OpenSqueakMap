as yet unclassified
apiQuery

| boundsString|
	boundsString := '(',
		(self coordBounds bottom roundTo: 0.0001), ',',
		(self coordBounds left roundTo: 0.0001), ',',
		(self coordBounds top roundTo: 0.0001), ',', 
		(self coordBounds right roundTo: 0.0001), ')'.
	^ '(node', boundsString, ';way', boundsString, ';rel', boundsString, ';);out;'