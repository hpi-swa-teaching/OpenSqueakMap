defaults
defaultConfiguration

	^ self new
		at: 14 add: (OSMDownloadConfigurationRule whereExists: 'water');
		at: 14 add: (OSMDownloadConfigurationRule whereExists: 'building');
		at: 14 add: (OSMDownloadConfigurationRule whereExists: 'highway').