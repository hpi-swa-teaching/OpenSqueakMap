as yet unclassified
oldConfiguration

	|showWaysRule|
	showWaysRule := OSMStaticRule
		for: [:x | x type = #way]
		setAttributes: {
			#visible -> true.
			#color -> Color red}.
	
	^ self new
		add: showWaysRule;
		yourself.
		