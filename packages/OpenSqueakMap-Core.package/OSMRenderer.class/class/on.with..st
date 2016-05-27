as yet unclassified
on: aDataSet with: aConfiguration

	^self new
		dataSet: aDataSet;
		scaleFactorFromBounds: aDataSet bounds;
		setInitialOffset;
		configuration: aConfiguration;
		applyConfiguration;
		yourself