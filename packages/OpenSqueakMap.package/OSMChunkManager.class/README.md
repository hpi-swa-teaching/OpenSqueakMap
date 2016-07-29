I manage the Chunks of an OpenSqueakMap instance. My didChangeOn: method is to be called every time something in the Viewport should change (i.e. zooming, panning, new configuration). I will automatically create Chunks when they are needed, move them and delete them (although deletion has not been implemented yet). 
I keep record of which Chunk is responsible for which WayRenderObject, so that Ways that span across more than one Chunk get rendered only once.

Instance Variables
	backupChunks:		<Dictionary>
	chunks:		<Dictionary>
	configuration:		<OSMRenderConfiguration>
	downloadConfig:		<OSMDownloadConfiguration>
	nodes:		<Dictionary>
	progressBar:		<OSMProgressMorph>
	renderingChunks:		<Dictionary>

backupChunks
	- Sets of Chunks that are not the renderingChunk of a WayRenderObject, but contain it (way id->set of chunks). When a Chunk gets deleted, all WayRenderObjects that had that Chunk as a renderingChunk pick a new renderingChunk from their backupChunks. If there are no backupChunks, the WayRenderObject is deleted. 

chunks
	- The Chunks that I currently manage (chunk index->chunk).

configuration
	- Configures how my Chunks' RenderObjects should be displayed.

downloadConfig
	- Configures what data my Chunks should download from the API.

nodes
	- The Nodes from all Chunks combined (node id->node). Needed by WayRenderObjects whose Chunks do not know the position of all their Nodes.

progressBar
	- ProgressMorph that can be used to show progress when downloading/rendering Chunks.

renderingChunks
	- Dictionary that records what Chunk is responsible for what WayMorph (way id->chunk).