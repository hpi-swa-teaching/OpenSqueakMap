morphic
setName

	self name: (self dataObject tags at: #name ifAbsent:[nil]).