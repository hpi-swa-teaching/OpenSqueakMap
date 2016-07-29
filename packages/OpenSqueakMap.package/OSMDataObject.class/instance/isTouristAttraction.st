testing
isTouristAttraction

	^ self tags at: #tourism ifAbsent: [''] = #attraction.