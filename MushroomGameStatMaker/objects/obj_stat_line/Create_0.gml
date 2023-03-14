/// @description Insert description here
// You can write your code in this editor
base = 0;
scale = 0;
total = 0;
name = "Nothing";

with(instance_create_layer(x+140, y, "Instances", obj_text_input))//base number
	{
	type = in_type.number;
	text = other.base;
	master = other.id;
	other.input1 = id;
	}
with(instance_create_layer(x+210, y, "Instances", obj_text_input))//scale number
	{
	type = in_type.number;
	text = other.scale;
	master = other.id;
	other.input2 = id;
	}