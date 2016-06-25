as yet unclassified
download

	[self tryDownload]
		on: Exception
		do: [:ex | 
			(self askIfRetry: ex messageText)
				ifTrue: [self download]
				ifFalse: [self dataSet: OSMDataset new]].