as yet unclassified
testConfig
	^ OSMDownloadConfiguration new
		at: 20 add: (OSMDownloadConfigurationRule whereExists: 'building');
		at: 20 add: (OSMDownloadConfigurationRule whereExists: 'highway');
		at: 19 add: (OSMDownloadConfigurationRule whereExists: 'building');
		at: 19 add: (OSMDownloadConfigurationRule whereExists: 'highway');
		at: 18 add: (OSMDownloadConfigurationRule whereExists: 'building');
		at: 18 add: (OSMDownloadConfigurationRule whereExists: 'highway');
		at: 17 add: (OSMDownloadConfigurationRule whereExists: 'building');
		at: 17 add: (OSMDownloadConfigurationRule whereExists: 'highway');
		at: 16 add: (OSMDownloadConfigurationRule whereExists: 'building');
		at: 16 add: (OSMDownloadConfigurationRule whereExists: 'highway');
		at: 15 add: (OSMDownloadConfigurationRule whereExists: 'building');
		at: 15 add: (OSMDownloadConfigurationRule whereExists: 'highway');
		at: 14 add: (OSMDownloadConfigurationRule whereExists: 'building');
		at: 14 add: (OSMDownloadConfigurationRule whereExists: 'highway').