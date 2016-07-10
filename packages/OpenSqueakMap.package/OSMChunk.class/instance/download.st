as yet unclassified
download

	[self tryDownload]
		on: self exceptionSet
		do: [:ex |
			(self askIfRetry: ex messageText) caseOf: {
				[#continue] -> [self dataSet: OSMDataset empty].
				[#retry] ->[ex retry].
				[#abort] ->[OSMAbortException new signal].
				[#debug] ->[ToolSet debugError: ex]}].