/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_font(fnt_main);
draw_set_color(c_black);
draw_set_halign(centering);
draw_set_valign(fa_center);

if typing
	{
	draw_set_color(c_green);
	}

draw_text(x+adjust, y, string(mytext));