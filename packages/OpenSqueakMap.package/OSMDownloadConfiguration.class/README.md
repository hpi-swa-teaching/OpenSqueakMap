I am a collection of DownloadConfigurationRules, selectable by zoom level. If a rule is defined for a zoom level, it also applies to all higher zoom levels (i.e. if you put a rule to download park benches at zoom level 17, they will be downloaded at 18 as well, but not at 16).
My queryStringFor:bounds: method returns a query in the Overpass Query Language that can be send to the API to download the data defined by my rules.
See http://wiki.openstreetmap.org/wiki/Overpass_API/Overpass_QL for documentation.

Instance Variables
	rulesForZoomLevel:		<Dictionary>

rulesForZoomLevel
	- Dictionary of OrderedCollections of OSMDownloadConfigurationRules that apply starting from a zoom level (zoom level->collection of rules).