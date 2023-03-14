// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function new_unit_blank()
{
var temp_unit = {
	name : "New Unit",
	stats : []
	}
	
temp_unit.stats[stat.hp][stat_part.base]=10;
temp_unit.stats[stat.hp][stat_part.scale]=4;

temp_unit.stats[stat.ap][stat_part.base]=3;
temp_unit.stats[stat.ap][stat_part.scale]=0.1;

temp_unit.stats[stat.ad][stat_part.base]=5;
temp_unit.stats[stat.ad][stat_part.scale]=1;

temp_unit.stats[stat.md][stat_part.base]=6;
temp_unit.stats[stat.md][stat_part.scale]=1;

temp_unit.stats[stat.cc][stat_part.base]=0;
temp_unit.stats[stat.cc][stat_part.scale]=0;

temp_unit.stats[stat.armor][stat_part.base]=0;
temp_unit.stats[stat.armor][stat_part.scale]=0.2;

temp_unit.stats[stat.dodge][stat_part.base]=0;
temp_unit.stats[stat.dodge][stat_part.scale]=0;

temp_unit.stats[stat.resistance][stat_part.base]=0;
temp_unit.stats[stat.resistance][stat_part.scale]=0;

temp_unit.stats[stat.tenacity][stat_part.base]=0;
temp_unit.stats[stat.tenacity][stat_part.scale]=0;


array_push(alldata, temp_unit);
}
function calc_stat(unit, stat_id, level)
{
	level--;
	
	var base = unit.stats[stat_id][stat_part.base];
	var scale = unit.stats[stat_id][stat_part.scale];
	
	return floor(base + (scale*level));
}
function save_json(_data, _name) {

    var json_string = json_stringify(_data);
    var buffer      = buffer_create(string_byte_length(json_string) + 1, buffer_fixed, 1);
    buffer_write(buffer, buffer_string, json_string);
    buffer_save(buffer, _name);
    buffer_delete(buffer);

}
function load_json(_name) {

    var buffer = buffer_load(_name);

    if (buffer != -1)
    {
        var json_string = buffer_read(buffer, buffer_string);

        buffer_delete(buffer);

        return json_parse(json_string);
    }
    else
    {
        return undefined;
    }
}
function save_stats()
{
var guy = alldata[selected];

for (var i=0; i<STAT_AMOUNT; i++)
	{
	guy.stats[i][stat_part.base]=input_lines[i].base;
	guy.stats[i][stat_part.scale]=input_lines[i].scale;
	}
}
function popup_add(popup_string)
{
ds_list_add(obj_controller.popups, popup_string);
}