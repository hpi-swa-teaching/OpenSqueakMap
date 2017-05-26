defaults
alternativeConfiguration

	|showWaysRule|
	showWaysRule := OSMStaticRule
		for: [:x | x type = #way]
		setAttributes: {
			#visible -> true.
			#color -> Color red.
			#fillColor -> Color transparent.
			#borderWidth -> 1}.
	
	^ self new
		name: 'alternativeConfiguration';
		add: showWaysRule;
		yourself.
		