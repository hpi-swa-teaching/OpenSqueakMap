as yet unclassified
on: aRectangle with: aConfiguration

	^self new
		zoomLevel: 17;
		setInitialOffsetFrom: aRectangle;
		configuration: aConfiguration;
		applyConfiguration;
		yourself