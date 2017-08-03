downloading
downloadWithConfig: aDownloadConfig at: aZoomLevel

	| query |
	query := aDownloadConfig queryStringFor: aZoomLevel bounds: self coordBounds.
	[self tryDownload: query]
		on: self exceptionSet
		do: [:ex | ex retry].