I am a collection of DownloadConfigurationRules. Bla. My queryStringFor:bounds: method returns a query in the Overpass Query Language that will download the data defined by my rules.
See http://wiki.openstreetmap.org/wiki/Overpass_API/Overpass_QL

Instance Variables
	rules:		<Dictionary>

rules
	- Dictionary of OrderedCollections of OSMDownloadConfigurationRules. The keys are the zoom levels, the value is a collection of all DownloadConfigurationRules that apply at said zoom level.
