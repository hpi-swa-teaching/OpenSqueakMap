downloading
add: aChunk in: aViewport
	| process |

	"self save: aChunk."
	process := [aChunk downloadWithConfig: self downloadConfiguration in: aViewport.] forkAt: Processor userBackgroundPriority.
	self addActiveDownload: process for: aChunk index.
	"self processDataSetOf: aChunk."
	^ aChunk