/// @description test
///@arg array
///@arg pos

if hspeed < 0
	{
		image_index =0 
	}

if hspeed > 0
	{
	
		image_index = 1
	}
	

if abs(speed) > 0.2
{
    friction = speed*0.02;
}
else
{
    friction = 0;
}
if !has_target 
	{
		house = generate_house_list(x)
		if (array_length(house)>0)
		{
			show_debug_message(string(target_house) + " 1 ")
			target_house = get_target_house(house , self)
			show_debug_message(string(target_house) + " 2 ")
			has_target = instance_exists(target_house)
		}
	}
	


	


if mode == 0
{	
	if(instance_exists(target_house) && has_target)
	{
		if (x < target_house.house_x-20)
		{
			hspeed = 3
		}
		else if (x > target_house.house_x + 20)
		{
			hspeed = -3
		}
		if (y < target_house.house_y- 250)
		{
			vspeed = 1
		}
		else if (y > target_house.house_y - 225)
		{
			vspeed = -1
		}
		if (x >= target_house.house_x and x<=target_house.house_x + 10 and y >= target_house.house_y-350 and y < target_house.house_y - 225)
			{
				on_top = true
				if can_shoot == true
				{
				can_shoot = false
				alarm[0] = 100
				enemy_fire(on_top , self)
				}
			}
		else	
			{
				on_top = false
			}

	}
	else
	{
		mode = 1
		alarm_set(1,100)
	
	}
}



if mode == 1 // wander mode
{
	target_y = room_height/2
	if diret = 0 
	{
		diret = irandom_range(1,2)
	}
	 
	show_debug_message("arggggggg" + string(alarm_get(1)) + string(self.id))
	if alarm_get(1) = -1
	{
		
		alarm_set(1,10000)
	
	
	}
	if diret == 1
	{
		hspeed = -2
	
	}
	else if diret == 2
	{
		hspeed = 2
	
	}
		if (y>target_y)
		{
			vspeed = -1
		}
		else if (y< target_y)
		{
			vspeed = 1
		}
}

