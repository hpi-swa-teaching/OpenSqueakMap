instance creation
withViewport: aViewport

	^ self new initializeWithViewport: aViewport;
		renderConfiguration: aViewport chunkManager renderConfiguration;
		yourself.