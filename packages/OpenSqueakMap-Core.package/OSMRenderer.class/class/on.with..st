as yet unclassified
on: aRectangle with: aConfiguration

	^self new
		zoomLevel: 20;
		setInitialOffsetFrom: aRectangle;
		configuration: aConfiguration;
		applyConfiguration;
		yourself