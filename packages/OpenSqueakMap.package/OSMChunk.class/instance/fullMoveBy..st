accessing
fullMoveBy: aPoint

	self wayMorphs do: [:morph | morph position: morph position + aPoint].
	self streetnames do: [:morph | morph owner position: morph owner position + aPoint].