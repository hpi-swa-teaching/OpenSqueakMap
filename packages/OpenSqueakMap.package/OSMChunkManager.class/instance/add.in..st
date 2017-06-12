downloading
add: aChunk in: aViewport
	self save: aChunk.
	[aChunk downloadWithConfig: self downloadConfiguration in: aViewport.] forkAt: Processor userBackgroundPriority.
	"self processDataSetOf: aChunk."
	^ aChunk