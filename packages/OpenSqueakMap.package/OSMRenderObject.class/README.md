I am the abstract superclass of the Morphs that represent an OSM DataObject. My subclasses have to know how to render themselves. For Streetmorphs to render the streetname is rendered as StringMorph dependent from Zoomlevel.

Instance Variables
	dataObject:		<OSMDataObject>
	displayedName: 	<StringMorph>
	renderAttributes:		<Dictionary>

dataObject
	- The DataObject that I represent.

displayedName 
	- the Morph which contains my streetname if I'am a street

renderAttributes
	- Attributes that define how my DataObject has to be rendered (attribute->value). To be set through a RenderConfiguration. Should probably be turned into its own class as soon as we have a better grasp of what attributes should go in there.