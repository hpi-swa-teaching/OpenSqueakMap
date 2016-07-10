as yet unclassified
downloadWithQuery: aString

	[self tryDownloadWithQuery: aString]
		on: self exceptionSet
		do: [:ex |
			(self askIfRetry: ex messageText) caseOf: {
				[#continue] -> [self dataSet: OSMDataset empty].
				[#retry] ->[ex retry].
				[#abort] ->[OSMAbortException new signal].
				[#debug] ->[ToolSet debugError: ex]}].