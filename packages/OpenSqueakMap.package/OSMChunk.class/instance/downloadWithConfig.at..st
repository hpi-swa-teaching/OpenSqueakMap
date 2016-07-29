downloading
downloadWithConfig: aDownloadConfig at: aZoomLevel

	| query |
	query := aDownloadConfig queryStringFor: aZoomLevel bounds: self coordBounds.
	[self tryDownload: query]
		on: self exceptionSet
		do: [:ex |
			(self askIfRetry: ex messageText) caseOf: {
				[#continue] -> [self dataSet: OSMDataset empty].
				[#retry] ->[ex retry].
				[#abort] ->[OSMAbortException new signal].
				[#debug] ->[ToolSet debugError: ex]}].