/// @description Step event for movement





if(keyboard_check(vk_left))
	{
		hspeed = -10
		image_index =0 
	}

if keyboard_check(vk_right)
	{
	
		hspeed = 10;
		image_index =1
	}
	
if keyboard_check(vk_up)
	{
	
		vspeed = -4;
	}
if keyboard_check(vk_down)
	{
	
		vspeed = 4;
	}
if abs(speed) > 0
{
    friction = speed*0.03;
}
else
{
    friction = 0;
}


