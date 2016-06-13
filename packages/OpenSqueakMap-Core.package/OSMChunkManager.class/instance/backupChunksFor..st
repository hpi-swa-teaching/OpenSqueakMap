accessing
backupChunksFor: aWay

	^ self backupChunks at: aWay ifAbsentPut: [Set new].