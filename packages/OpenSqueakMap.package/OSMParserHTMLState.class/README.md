I am the state for the <html> tag. This means something went wrong and the received document contains an error message, so I parse that instead. I then throw an OSMApiException.

Instance Variables
	errorString:		<String>
	reading:		<Boolean>

errorString
	- The parsed error message that will be returned.

reading
	- True iff I am inside a <p> tag and should therefore parse the characters.