morphic
setContextInfo

	self name: (self dataObject tags at: #name ifAbsent:['']) , self dataObject getReadableAddress.
