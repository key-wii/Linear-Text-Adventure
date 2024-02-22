/// @function wait();
/// @param minimum wait time
function waitCheck(_minimum_) {
	authorCurrent = fullText[messageCount].Author;
	messageCurrent = fullText[messageCount].Content;
	
	if (authorCurrent != "Anna") {
		wait = true;
		var _wait_for = clamp(string_length(messageCurrent), _minimum_, 150);
		alarm_set(2, _wait_for); //Wait to proceed again
		
		caret = false; //Remove caret while reader is unable to input anything
		alarm_set(0, _wait_for); //Return caret after wait is over
	} else {
		proceed(); //Don't wait if there is no text between previous input and next input
	}
}