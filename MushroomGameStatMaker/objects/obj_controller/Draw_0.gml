/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_font(fnt_main);

draw_rectangle(1,1,150,500, true);

for (var i=0; i<array_length(alldata);i++)
	{
	var temp_guy = alldata[i];
	
	var spot_x = 20;
	var spot_y = (i*20)+20;
	
	draw_text(spot_x, spot_y, temp_guy.name);
	
	if selected = i
		{
		draw_rectangle(spot_x-5, spot_y-8, spot_x+100, spot_y+8, true);
		
		draw_text(350, 30, "Lvl "+string(global.testlevel));
		}
	
	
	if mouse_check_button_pressed(mb_left)
		{
		if point_in_rectangle(mouse_x, mouse_y, spot_x-5, spot_y-8, spot_x+100, spot_y+8)
			{
			if selected!=-1
				{
				save_stats();
				}
				
			selected = i;
			
			var guy = alldata[i];
			
			alarm[1]=2;
			
			for (var i=0; i<STAT_AMOUNT; i++)
				{
				var il = input_lines[i];
				
				il.base = guy.stats[i][stat_part.base];
				il.scale = guy.stats[i][stat_part.scale];
				il.total = il.base + (il.scale * (global.testlevel -1));
				il.alarm[1]=2;
				}
			}
		}
	}

draw_set_halign(fa_center);
draw_text(room_width*0.5, room_height-20, "Press + to add monster");