/// @description Take Input

//if (alarm_get(2) >= 0) show_debug_message(string(alarm_get(2)));

if (!wait && authorCurrent == "Anna") {

	keyPressing = keyboard_check(vk_anykey);
	var _cooldown = 30;
	if (DEBUG_SPEED) _cooldown = 10;

	if (!nextInputCooldown && keyPressing) {
		if (!DEBUG_SPEED) nextInputCooldown = true;
	
		input = string_copy(nextInput, 0, string_length(input) + 1);
		if (!DEBUG_SPEED && heldKey >= _cooldown) alarm_set(1, 4);
	}
	else if (!keyPressing) {
		keyPressing = false;
	
		nextInputCooldown = false;
		alarm_set(1, 0);
	}

	if (keyPressing) {
		heldKey++;
		if (heldKey == _cooldown) {
			nextInputCooldown = false;
		}
	}
	else heldKey = 0;

	if (keyboard_check_pressed(vk_enter) && input == nextInput) {
		backlog = backlog + "\n\n" + nextInput;
		heldKey = 0;
		input = "";
		messageCount++;
		scrollY = 0;
		waitCheck(0);
	}

	var _move_text = 42;
	var _text_height = string_height_ext(backlog, y_spacing, display_get_gui_width() - xx * 2);
	var _text_height_max = _text_height - gh + y_adjust;
	if (_text_height_max < 0) _text_height_max = 0;
	if (mouse_wheel_up()) scrollY = clamp(scrollY + _move_text, 0, _text_height_max);
	if (mouse_wheel_down()) scrollY = clamp(scrollY - _move_text, 0, 99999999999);

}