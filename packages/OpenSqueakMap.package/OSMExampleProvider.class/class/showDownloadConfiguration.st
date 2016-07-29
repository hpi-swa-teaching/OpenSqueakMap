Examples
showDownloadConfiguration
	"This exampe shows how to compose configurations and rules for selective downloading"

	| osm |
	osm := OpenSqueakMap show: 13.12695@52.39338.
	
	^ osm downloadConfiguration: (OSMDownloadConfiguration new
		at: 14 add: (OSMDownloadConfigurationRule whereExists: 'building');
		at: 14 add: (OSMDownloadConfigurationRule whereExists: 'highway')).