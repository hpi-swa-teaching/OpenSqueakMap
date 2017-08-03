accessing
abortActiveDownloads 

	self chunksCurrentlyDownloading
		do: [:aProcess | aProcess terminate].
	"self chunks
		do: [:aChunk | (self chunksCurrentlyDownloading keys includes: aChunk index)
			ifTrue: [self chunks removeKey: aChunk index]]."
	self chunksCurrentlyDownloading removeAll.