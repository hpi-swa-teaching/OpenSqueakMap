downloading
tryDownload: aString in: aViewport

	| apiAnswer |
	apiAnswer := (WebClient
		httpPost: self class apiURL
		content: aString
		type: nil) content utf8ToSqueak.
	self dataSet: (OSMParser on: apiAnswer) parseDocument.
	
	
	"processDataSetOf"
	self chunkManager processDataSetOf: self.
	aViewport addChunk: self.
	self moveToPositionIn: self viewport.
	self chunkManager applyRenderConfiguration.
	self render.
	""
	""
	""
		