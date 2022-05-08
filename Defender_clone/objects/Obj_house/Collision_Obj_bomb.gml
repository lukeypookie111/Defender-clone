/// @description Collision with obj_bomb
house_health -= other.damage
if house_health <= 0 
{
		Obj_house_spawner.num_houses -= 1
		if is_targeted_by.has_target == true {is_targeted_by.has_target = false; is_targeted_by.target_house = 0}
		instance_destroy()
		is_targeted_by.target_house = 0
		is_targeted_by.has_target = false

}	
