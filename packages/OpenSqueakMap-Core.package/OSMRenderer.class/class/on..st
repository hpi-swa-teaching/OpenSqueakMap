as yet unclassified
on: aDataSet

	^self new
		dataSet: aDataSet;
		scaleFactorFromBounds: aDataSet bounds;
		setInitialOffset;
		configuration: OSMConfiguration defaultConfiguration;
		applyConfiguration;
		yourself