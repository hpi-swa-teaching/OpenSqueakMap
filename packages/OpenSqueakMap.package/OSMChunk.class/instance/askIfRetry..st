accessing
askIfRetry: aString

	| message |
	message := aString withBlanksTrimmed withNoLineLongerThan: 60.
	^ (UserDialogBoxMorph new)
		title: 'A chunk could not be downloaded:';
		label: message;
		addSelectedCancelButton: 'continue' value: #continue;
		addButton: 'retry' value: #retry;
		runModalIn: ActiveWorld forHand: ActiveHand at: nil.