downloading
downloadWithConfig: aDownloadConfig in: aViewport

	| query |
	query := aDownloadConfig queryStringFor: aViewport zoomLevel bounds: self coordBounds.
	[self tryDownload: query in: aViewport]
		on: self exceptionSet
		do: [:ex |
			(self askIfRetry: ex messageText) caseOf: {
				[#continue] -> [self dataSet: OSMDataset empty].
				[#retry] ->[ex retry].
				[#abort] ->[OSMAbortException new signal].
				[#debug] ->[ToolSet debugError: ex]}].