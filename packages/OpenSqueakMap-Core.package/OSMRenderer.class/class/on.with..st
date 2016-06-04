as yet unclassified
on: aDataSet with: aConfiguration

	^self new
		dataSet: aDataSet;
		setInitialOffset;
		configuration: aConfiguration;
		applyConfiguration;
		yourself