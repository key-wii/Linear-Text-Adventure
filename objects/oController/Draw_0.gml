/// @description 

var _x = 10;
var _y = display_get_gui_height() - 64 + scrollY;

var _y_spacing = string_height("a");
var _input_text = command + input;
var _gw = display_get_gui_width();
var _x_spacing = 10;
var _max_w = _gw - _x_spacing * 2;
var _y_adjust = string_height_ext(_input_text, _y_spacing, _max_w) - _y_spacing; // Move text up if input box is big enough to take up multiple lines

draw_set_font(fnt_text);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

draw_text_ext(_x, _y - _y_adjust, backlog, string_height("a"), display_get_gui_width() - _x * 2);