as yet unclassified
apiQuery

| boundsString|
	boundsString := '(',
		self coordBounds bottom, ',',
		self coordBounds left, ',',
		self coordBounds top, ',', 
		self coordBounds right, ')'.
	^ '(node', boundsString, ';way', boundsString, ';rel', boundsString, ';);out;'