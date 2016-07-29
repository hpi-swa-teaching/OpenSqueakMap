applying
applyTo: anElement

	^ self rules do: [:rule | rule applyTo: anElement].