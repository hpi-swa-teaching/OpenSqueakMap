chunk assignment
for: aWay setRenderingChunk: aChunk

	self renderingChunks at: aWay id ifPresent: [:oldChunk |
		oldChunk wayMorphs at: aWay id ifPresent: [:wayMorph | wayMorph delete].
		(self backupChunksFor: aWay) add: oldChunk].
	self renderingChunks at: aWay id put: aChunk.