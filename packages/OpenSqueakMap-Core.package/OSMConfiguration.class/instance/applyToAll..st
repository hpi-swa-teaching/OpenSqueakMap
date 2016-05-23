accessing
applyToAll: aCollection

	aCollection do: [:x | self applyTo: x]