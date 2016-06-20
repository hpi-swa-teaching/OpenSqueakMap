as yet unclassified
defaultAction

	| message |
	message := self messageText withNoLineLongerThan: 60.
	UserDialogBoxMorph inform: message title: 'A chunk could not be downloaded:'