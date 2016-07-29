I am part of a map, delimited by geocoordinates. I can download my own data, create according RenderObjects and tell them to render themselves. I can be moved with fullMoveBy: which results in all my RenderObjects being moved accordingly.

Instance Variables
	chunkManager:		<OSMChunkManager>
	coordBounds:		<Rectangle>
	dataSet:		<OSMDataset>
	positionInViewport:		<Point>
	renderObjects:		<Dictionary>
	shouldRedraw:		<Booleans>
	viewport:		<OSMViewport>
	wayMorphs:		<Dictionary>

chunkManager
	- The ChunkManager that manages me.

coordBounds
	- The geocoordinates that delimit the OpenStreetMap elements I am responsible for.

dataSet
	- Dataset that contains all DataObjects inside my coordBounds.

positionInViewport
	- My position relative to the Viewport in pixels. I.e. if there was a Node whose coordinates equal my coordBounds topLeft, then the node would be rendered at my positionInViewport.

renderObjects
	- Dictionary of all RenderObjects that result from my Dataset (dataObject id->renderObject).

shouldRedraw
	- True if my RenderObjects are outdated and should be rendered again (i.e. after zooming). False if my RenderObjects don't need to change and I should ignore the message render.

viewport
	- The Viewport in which my Morphs are displayed.

wayMorphs
	- Dictionary of the WayRenderObjects I am responsible for (dataObject id->renderObject). Consists of the WayRenderObjects in my renderObjects variable minus the ones of which I am not the renderingChunk.