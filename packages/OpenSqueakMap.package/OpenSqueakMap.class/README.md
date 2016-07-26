I am the main class of OpenSqueakMap. I keep a reference to all components and provide initialization and convenience methods.

Instance Variables
	chunkManager:		<OSMChunkManager>
	viewport:		<OSMViewport>
	window:		<PluggableSystemWindow>

chunkManager
	- The ChunkManager that provides the Chunks for this instance of OpenSqueakMap

viewport
	- The Morph in which the map is shown. Submorph of the window (indirectly, with an OSMPanelMorph in between)

window
	- The system window that provides this instance's UI