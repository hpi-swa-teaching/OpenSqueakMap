as yet unclassified
testConfig
	^ OSMDownloadConfiguration new
		at: (Interval from: 14 to: 20) add: (OSMDownloadConfigurationRule whereExists: 'building');
		at: (Interval from: 14 to: 20) add: (OSMDownloadConfigurationRule whereExists: 'highway').