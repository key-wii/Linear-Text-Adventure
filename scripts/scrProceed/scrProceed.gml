/// @function proceed();
/// @param n/a
function proceed() {
	var _prev_author = authorCurrent;
	authorCurrent = fullText[messageCount].Author;
	messageCurrent = fullText[messageCount].Content;
	
	
	if (authorCurrent == "Anna") {
		var _pos = string_pos("\\>", messageCurrent);
		if (_pos == 0) command = "* ";
		else command = "> ";
		
		nextInput = fullText[messageCount].Content;
		nextInput = string_replace_all(nextInput, "\\> ", ""); //Remove "\> " due to redundancy
		nextInput = string_replace_all(nextInput, "*", ""); //For now remove all "*"
	}
	else {
		//if (authorCurrent == "God")
		backlog = backlog + "\n\n" + messageCurrent;
		backlog = string_replace_all(backlog, "@", ""); //Remove @ signs
		backlog = string_replace_all(backlog, "> ", ""); //Remove unused Discord markup
		backlog = string_replace_all(backlog, "*", ""); //For now remove all "*"
		//backlog = string_replace(backlog, "  ", " "); //Remove double spaces
		
		messageCount++;
		if (_prev_author != "Anna") waitCheck(50);
		else proceed();
	}
}