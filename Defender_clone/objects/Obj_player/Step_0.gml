/// @description Step event for movement





if(keyboard_check(vk_left))
	{
		hspeed = -2
	}

if keyboard_check(vk_right)
	{
	
		hspeed = 2;
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
    friction = 0.05;
}
else
{
    friction = 0;
}
if abs(speed) >= 3
{
    speed = 2;
}
if speed > 0
{
	skeleton_animation_set_frame(0,2)
}
if speed < 0
{
	skeleton_animation_set_frame(0,0)
	
	
}

if keyboard_check(vk_space) 
	{	
		skeleton_ (0,2)
	}



