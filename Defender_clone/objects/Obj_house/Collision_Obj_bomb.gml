/// @description Collision with obj_bomb
health -= other.damage

if health <= 0 
	{
		Obj_house_spawner.num_houses -= 1
		instance_destroy()
		is_targeted_by.has_target = false
		
	}
