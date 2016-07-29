defaults
defaultConfiguration

	^ OSMDownloadConfiguration new
		at: 14 add: (OSMDownloadConfigurationRule whereExists: 'building');
		at: 14 add: (OSMDownloadConfigurationRule whereExists: 'highway').