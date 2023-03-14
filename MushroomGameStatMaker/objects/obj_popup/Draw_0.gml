/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_set_halign(fa_center);


var text_width = string_width(mytext);
draw_text(x,y,mytext);
draw_rectangle(x-(text_width/2)-5, y-15, x+(text_width/2)+5, y+15, true);