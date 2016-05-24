as yet unclassified
defaultConfiguration

	|showWaysRule|
	showWaysRule := OSMConfigurationRule
		for: [:x | x type = #way]
		setAttributes: [Dictionary new
			at: #visible put: #true;
			at: #color put: #red;
			yourself].
	
	^ self new
		add: showWaysRule;
		yourself.
		