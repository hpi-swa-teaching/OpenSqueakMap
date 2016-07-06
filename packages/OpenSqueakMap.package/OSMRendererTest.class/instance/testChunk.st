as yet unclassified
testChunk
	
	<timeout: 60>
	self shouldnt: [
		self chunkManager chunks at: (9650@13999).
		self chunkManager chunks at: (9650@14000)]
	raise: Error.