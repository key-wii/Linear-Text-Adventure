/// @description 

var _y =  gh - x_spacing;
var _lines = 1;

draw_set_font(fnt_text);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
var _yy =  _y - string_height_ext(input_text, y_spacing, max_w) - x_spacing;
draw_rectangle_color(0, _y - string_height_ext(input_text, y_spacing, max_w) - x_spacing,
	gw, gh, c_black, c_black, c_black, c_black, false);
draw_rectangle_color(15, _yy - 4, gw - 15, _yy - 1, c_white, c_white, c_white, c_white, false);
draw_text_ext(xx, _y, input_text, y_spacing, max_w);
if (caret) draw_text(x_spacing + string_width(input_text), _y, "|");