I parse XML files into an OSMDataSet. I am a subclass from SaxHandler, which implements the Template Method pattern. Therefore, I only need to override the methods which are called by super parseDocument.
I implement the State pattern. My current state is the top element of my states instance variable.

Instance Variables
	dataSet:		<OSMDataset>
	states:		<Stack>

dataSet
	- The DataSet that holds the parsed data.

states
	- The stack of my states. The stack represents the hierarchy of the XML document. If I am currently parsing at the root level, only the InitialState will be on the stack. If I find an <osm> tag, I will push an OSMState onto the stack; when the tag is closed, the state is popped.