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
<<<<<<< HEAD
		house = generate_house_list(x)
		if (array_length(house)>0)
=======
			index = 0
		for (var i = 0; i < instance_number(Obj_house)-1; ++i;)
>>>>>>> enemy_director
		{
			show_debug_message(string(target_house) + " 1 ")
			target_house = get_target_house(house , self)
			show_debug_message(string(target_house) + " 2 ")
			has_target = instance_exists(target_house)
		}
<<<<<<< HEAD
	}
	


=======
	

>>>>>>> enemy_director
	


if mode == 0
{	
	if(instance_exists(target_house) && has_target)
	{
<<<<<<< HEAD
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
=======
		has_target = true
		while target_house.is_targeted == true and has_target and instance_exists(target_house)
>>>>>>> enemy_director
			{
				on_top = true
				if can_shoot == true
				{
				can_shoot = false
				alarm[0] = 100
				enemy_fire(on_top , self)
				}
			}
<<<<<<< HEAD
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
=======
				target_house.is_targeted = true
				target_house.is_targeted_by = self
				mode = 0
			
		
	}
	}
	/// firgure out a way to change between modes without breaking anything
///move towards target else find target



	
if mode = 0
{	
if has_target and instance_exists(target_house)
{
	if (x < target_house.house_x-10)
	{
		hspeed += 1
	}
	else if (x > target_house.house_x + 10)
	{
		hspeed -= 1
	}
	if (y < target_house.house_y- 250)
	{
		vspeed += 1
	}
	else if (y > target_house.house_y - 225)
	{
		vspeed -= 1
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
}



if mode = 1 // wander mode
{
	diret = irandom_range(1,2)
	if diret = 1
>>>>>>> enemy_director
	{
		hspeed = -2
	
	}
	else if diret == 2
	{
		hspeed = 2
	
	}
<<<<<<< HEAD
		if (y>target_y)
		{
			vspeed = -1
		}
		else if (y< target_y)
		{
			vspeed = 1
		}
=======

	if has_target
	{
	mode = 0
	}
>>>>>>> enemy_director
}

