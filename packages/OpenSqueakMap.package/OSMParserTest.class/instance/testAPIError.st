as yet unclassified
testAPIError

	<timeout: 60>
	| chunk semaphore |
	chunk := OSMChunk withIndex: 9668@14249 on: nil.
	semaphore := Semaphore new.
	[chunk download. semaphore signal.] fork.
	[chunk download. semaphore signal.] fork.
	chunk download.
	semaphore wait; wait.