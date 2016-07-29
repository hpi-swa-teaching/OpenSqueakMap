accessing
backupChunksFor: aWay

	^ self backupChunks at: aWay id ifAbsentPut: [Set new].