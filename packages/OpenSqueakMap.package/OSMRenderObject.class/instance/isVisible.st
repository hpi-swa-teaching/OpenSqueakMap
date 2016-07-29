accessing
isVisible

	^ self renderAttributes at: #visible ifAbsent: [false].