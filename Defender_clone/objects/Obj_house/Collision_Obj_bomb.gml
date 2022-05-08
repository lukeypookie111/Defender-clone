/// @description Collision with obj_bomb
health -= other.damage
if health <= 0 
{
		Obj_house_spawner.num_houses -= 1
		show_debug_message("destroyed by" + string(other))
		show_debug_message(" ")
		
		alarm[0] = 20

		
		is_targeted_by.has_target = false
}	
