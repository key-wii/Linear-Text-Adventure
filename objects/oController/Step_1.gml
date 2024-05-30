/// @description Set variables
input_text = command + input;
gw = display_get_gui_width();
gh = display_get_gui_height();
x_spacing = 10;
xx = x_spacing;
max_w = gw - x_spacing * 2;
y_spacing = string_height("a");
y_adjust = string_height_ext(input_text, y_spacing, max_w) - y_spacing; // Move text up if input box is big enough to take up multiple lines