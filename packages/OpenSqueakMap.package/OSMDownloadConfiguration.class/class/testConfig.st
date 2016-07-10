as yet unclassified
testConfig
	^ OSMDownloadConfiguration new
		at: 17 add: (OSMDownloadConfigurationRule whereExists: 'building');
		at: 17 add: (OSMDownloadConfigurationRule where: 'amenity' equals: 'fountain');
		at: 16 add: (OSMDownloadConfigurationRule whereExists: 'building');
		at: 16 add: (OSMDownloadConfigurationRule where: 'amenity' equals: 'fountain');
		at: 15 add: (OSMDownloadConfigurationRule whereExists: 'building');
		at: 15 add: (OSMDownloadConfigurationRule where: 'amenity' equals: 'fountain');
		at: 14 add: (OSMDownloadConfigurationRule whereExists: 'building');
		at: 14 add: (OSMDownloadConfigurationRule where: 'amenity' equals: 'fountain').