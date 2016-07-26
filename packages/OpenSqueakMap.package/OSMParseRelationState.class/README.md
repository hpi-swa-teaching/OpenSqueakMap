WARNING: Relations are currently broken, since they sometimes add Ways without Nodes to a DataSet. It is possible that a Chunk gets to render this Way (therefore not rendering anything), even though another Chunk's DataSet would have contained correct data. Hence right now the adding of relations is commented out.

I am the state for the <rel> tag. I am responsible for parsing a single relation. I save the information in my relation instance variable and add it to my Parser's DataSet.

Instance Variables
	relation:		<OSMRelation>

relation
	- The relation I am parsing.
