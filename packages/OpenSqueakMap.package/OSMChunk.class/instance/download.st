as yet unclassified
download

	[self tryDownload]
		on: NameLookupFailure, OSMApiException
		do: [:ex |
			(self askIfRetry: ex messageText)
				ifTrue: [self download]
				ifFalse: [self dataSet: OSMDataset new]].