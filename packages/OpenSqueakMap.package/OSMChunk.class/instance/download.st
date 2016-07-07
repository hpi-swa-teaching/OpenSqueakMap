as yet unclassified
download

	[self tryDownload]
		on: self exceptionSet
		do: [:ex |
			(self askIfRetry: ex messageText) caseOf: {
				[#retry] ->[ex retry].
				[#continue] -> [self dataSet: OSMDataset empty]}].