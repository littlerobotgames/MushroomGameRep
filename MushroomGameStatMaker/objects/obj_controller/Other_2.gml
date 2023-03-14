/// @description Insert description here
// You can write your code in this editor
#region file code
#macro FILE_NAME "allstats.txt"
#macro FILE_PATH working_directory+FILE_NAME
#macro STAT_AMOUNT 9

alldata = load_json(FILE_PATH);
selected = -1;

show_debug_message(alldata);
#endregion

enum stat_part
	{
	base = 0,
	scale = 1,
	}
enum stat
	{
	hp = 0,
	ap = 1,
	ad = 2,
	md = 3,
	cc = 4,
	armor = 5,
	dodge = 6,
	resistance = 7,
	tenacity = 8
	}
enum in_type
	{
	number = 0,
	text = 1,
	both = 2
	}
global.stat_text[stat.hp] = "Health";
global.stat_text[stat.ap] = "Action Points";
global.stat_text[stat.ad] = "Attack Damage";
global.stat_text[stat.md] = "Magic Damage";
global.stat_text[stat.cc] = "Crit Chance";
global.stat_text[stat.armor] = "Armor";
global.stat_text[stat.dodge] = "Dodge";
global.stat_text[stat.resistance] = "Resistance";
global.stat_text[stat.tenacity] = "Tenacity";

global.testlevel = 1;

with(instance_create_layer(175, 30, "Instances", obj_text_input))
	{
	type = in_type.both;
	centering = fa_left;
	adjust = 8;
	sprite_index = spr_text_input_name;
	other.input_name = id;
	master = other.id;
	}


for (var i=0; i<STAT_AMOUNT; i++)
	{
	input_lines[i] = instance_create_layer(175, 60+(i*30), "Instances", obj_stat_line);
	input_lines[i].name = global.stat_text[i];
	}

popups = ds_list_create();
popup_y = 0;
popup_timer = 120;