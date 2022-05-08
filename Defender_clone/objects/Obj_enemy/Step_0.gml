/// @description Insert description here
// You can write your code in this editor


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
			index = 0
		for (var i = 0; i < instance_number(Obj_house)-1; ++i;)
		{
			house_x = instance_find(Obj_house,i)
			if (sqrt(sqr((x)-house_x.x)))< 256
			{
				house[index] = instance_find(Obj_house,i);
				index++
				
			}
		}
	

	

	House_number = irandom(array_length(house)-1)
	target_house =  house[House_number]
	time_out = 10
	if instance_exists(target_house) = true
	{
		has_target = true
		while target_house.is_targeted == true and has_target and instance_exists(target_house)
			{
				time_out--
				House_number = irandom(array_length(house)-1)
				target_house =  house[House_number]
				if time_out <= 0
				{
					mode = 1
					has_target= false
				}
			}
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
	{
		hspeed = -2
	
	}
	else if diret = 1
	{
		hspeed = 2
	
	}

	if has_target
	{
	mode = 0
	}
}

