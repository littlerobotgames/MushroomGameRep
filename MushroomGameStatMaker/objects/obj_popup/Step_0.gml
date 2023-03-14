/// @description Insert description here
// You can write your code in this editor
switch stage
	{
	case 0:
		if y<30
			{
			y++;
			}
		if y=30
			{
			stage++;
			}
		break;
	case 1:
		if wait>0
			{
			wait--;
			}
		if wait=0
			{
			stage++;
			}
		break;
	case 2:
		if y>-15
			{
			y--;
			}
		if y=-15
			{
			instance_destroy();
			}
	}