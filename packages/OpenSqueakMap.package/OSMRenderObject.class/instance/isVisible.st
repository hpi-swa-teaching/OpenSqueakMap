testing
isVisible

	^ self renderAttributes at: #visible ifAbsent: [false].