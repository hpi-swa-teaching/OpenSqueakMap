I represent an OpenStreetMap relation.

Instance Variables
	members:		<OrderedCollection>

members
	- Collection of the OSMWays and OSMNodes that make up the relation I represent. We're still not sure if this is the best way to represent relations, maybe a Dictionary of OrderedCollections (with the members' role as key) is to be preferred.