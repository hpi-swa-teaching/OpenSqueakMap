accessing
fullMoveBy: delta

	self wayMorphs do: [:morph |
		morph position: morph position + delta].