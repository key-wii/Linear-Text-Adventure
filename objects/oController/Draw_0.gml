/// @description 

var _y = display_get_gui_height() - 64 + scrollY;

draw_set_font(fnt_text);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

draw_text_ext(xx, _y - y_adjust, backlog, y_spacing, display_get_gui_width() - xx * 2);