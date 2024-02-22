/// @description 
DEBUG_SPEED = false;

authorCurrent = "";
messageCurrent = "";

fullText = undefined;
backlog = "";
input = "";

command = ">";
nextInput = "";
nextInputCooldown = false;
wait = false;

pressingKey = false;
heldKey = 0;

caret = false;
alarm_set(0, 40);

scrollY = 0; //Used to move text when scrolling mouse


var _file_directory = working_directory + "lohac.json";
if (file_exists(_file_directory)) {
	var _json = "";
	var _file = file_text_open_read(_file_directory);
	
	while (!file_text_eof(_file)) {
		_json += file_text_readln(_file);
	}
	
	file_text_close(_file);
	
	fullText = json_parse(_json);
}

messageCount = 0;
messageCurrent = "";
subMessageCurrent = "";
proceed();