I am the Morph that contains all RenderObjects. Those are provided to me by my ChunkManager, clustered in Chunks. I know the current zoom level and the coordinates of the area I currently am displaying. Every time those change, I notify my ChunkManager, which updates my RenderObjects.

Instance Variables
	chunkManager:		<OSMChunkManager>
	chunks:		<OrderedCollection>
	isPanning: 	<Boolean>
	panStartPos: 	<Point>
	topLeftCoord:		<Point>
	zoomLevel:		<Integer>


chunkManager
	- The ChunkManager that provides my Chunks

chunks
	- List of the Chunks that are my submorphs 
	
isPanning
	- tells me if the user is  panning or not
	
panStartPos
	- tells me the start position of the users panning process

topLeftCoord
	- Geographic coordinate of the point that is currently shown at my top left corner 

zoomLevel
	- Zoom level at which my Chunks are currently being displayed. Needed by the *-methods in Point for coordinate conversion.