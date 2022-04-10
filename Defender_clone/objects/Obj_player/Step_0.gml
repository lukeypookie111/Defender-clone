/// @description Step event for movement





if(keyboard_check(vk_left))
	{
		hspeed = -5
		image_index =0 
	}

if keyboard_check(vk_right)
	{
	
		hspeed = 5;
		image_index =1
	}
	
if keyboard_check(vk_up)
	{
	
		vspeed = -2;
	}
if keyboard_check(vk_down)
	{
	
		vspeed = 2;
	}
if abs(speed) > 0
{
    friction = speed*0.05;
}
else
{
    friction = 0;
}


