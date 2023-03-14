var lr_buttons = keyboard_check(ord("D"))-keyboard_check(ord("A"));
var ud_buttons = keyboard_check(ord("S"))-keyboard_check(ord("W"));

walk_dir = point_direction(x,y,x+lr_buttons, y+ud_buttons);

if lr_buttons != 0 or ud_buttons != 0
	{
	spd = spd_max;
	}
else
	{
	spd = 0;
	}
	
x+=lengthdir_x(spd, walk_dir);
y+=lengthdir_y(spd, walk_dir);