// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_fire(can_fire , ship)
{
	if can_fire
	{
		spawn_x = ship.x
		spawn_y = ship.y + 20
		instance_create_layer(spawn_x,spawn_y,2,Obj_bomb)
		
		
		
	}
	

}