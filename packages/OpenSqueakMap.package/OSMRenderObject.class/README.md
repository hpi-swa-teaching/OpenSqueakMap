I am the abstract superclass of the Morphs that represent an OSM DataObject. My subclasses have to know how to render themselves.

Instance Variables
	dataObject:		<OSMDataObject>
	renderAttributes:		<Dictionary>

dataObject
	- The DataObject that I represent.

renderAttributes
	- Attributes that define how my DataObject has to be rendered. To be set through a RenderConfiguration. Should probably be turned into its own class as soon as we have a better grasp of what attributes should go in there.