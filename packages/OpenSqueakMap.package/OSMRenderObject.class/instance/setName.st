as yet unclassified
setName

	self name: (self osmEntity tags at: #name ifAbsent:[nil]).