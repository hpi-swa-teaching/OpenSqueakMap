I am a rule that defines what data should be downloaded from the Overpass servers. To do that, I keep a tag filter in Overpass Query Language, out of which DownloadConfiguration can build the actual query. The user is not required to know Overpass QL, because I provide constructors that generate the correct queryString.

Instance Variables
	queryString:		<String>

queryString
	- My tag filter in Overpass QL.