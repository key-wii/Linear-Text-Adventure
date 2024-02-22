/// @description 

var _gw = display_get_gui_width();
var _gh = display_get_gui_height();
var _x_spacing = 10;
var _x = _x_spacing;
var _y =  _gh - _x_spacing;
var _input_text = command + input;
var _max_w = _gw - _x_spacing * 2;
var _y_spacing = string_height("a");
var _lines = 1;

draw_set_font(fnt_text);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
var _yy =  _y - string_height_ext(_input_text, _y_spacing, _max_w) - _x_spacing;
draw_rectangle_color(0, _y - string_height_ext(_input_text, _y_spacing, _max_w) - _x_spacing,
	_gw, _gh, c_black, c_black, c_black, c_black, false);
draw_rectangle_color(15, _yy - 4, _gw - 15, _yy - 1, c_white, c_white, c_white, c_white, false);
draw_text_ext(_x, _y, _input_text, _y_spacing, _max_w);
if (caret) draw_text(_x_spacing + string_width(_input_text), _y, "|");