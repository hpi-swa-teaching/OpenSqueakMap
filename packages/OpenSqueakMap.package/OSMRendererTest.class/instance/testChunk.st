running
testChunk
	
	<timeout: 60>
	self shouldnt: [
		self viewport chunkManager chunks at: (9650@13999).
		self viewport chunkManager chunks at: (9650@14000)]
	raise: Error.