/// @description 

var _x = 10;
var _y = display_get_gui_height() - 64 + scrollY;

draw_set_font(fnt_text);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

draw_text_ext(_x, _y, backlog, string_height("a"), display_get_gui_width() - _x * 2);