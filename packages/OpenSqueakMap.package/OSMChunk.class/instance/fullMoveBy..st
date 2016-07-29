accessing
fullMoveBy: aPoint

	self wayMorphs do: [ :morph | morph position: morph position + aPoint].