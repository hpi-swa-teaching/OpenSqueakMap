downloading
tryDownload: aString in: aViewport

	| apiAnswer |
	apiAnswer := (WebClient
		httpPost: self class apiURL
		content: aString
		type: nil) content utf8ToSqueak.
	self dataSet: (OSMParser on: apiAnswer) parseDocument.
	
	self chunkManager processDataSetOf: self.
	aViewport addChunk: self.
	self moveToPositionIn: self viewport.
	
	self chunkManager save: self.
	
	"self applyConfiguration: self chunkManager renderConfiguration.
	self render."
	
	"self chunkManager progressBar next.
	(self chunkManager progressBar currentItem = self chunkManager progressBar total)
		ifTrue: [self chunkManager progressBar hide.]"
	
	self chunkManager applyRenderConfiguration.
	self chunkManager chunks do: [:chunk | chunk render].