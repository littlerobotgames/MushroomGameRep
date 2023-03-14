/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(ord("S"))
	{
	if keyboard_check(vk_control)
		{
		save_stats();
		save_json(alldata, FILE_PATH);
		popup_add("Unit Data Saved");
		}
	}

if ds_list_size(popups)>0
	{
	if !instance_exists(obj_popup)
		{
		var pop_text = popups[|0];
		with(instance_create_layer(room_width-200, -15, "Instances", obj_popup))	
			{
			mytext = pop_text;
			}
		ds_list_delete(popups, 0);
		}
	}