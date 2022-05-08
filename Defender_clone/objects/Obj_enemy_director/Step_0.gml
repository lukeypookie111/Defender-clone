/// @description Enemy director for managing enemy spawning location and numbers
spawn_x = 0
spawn_y = 0
player_x_1 = Obj_player.x-10
player_x_2 = Obj_player.x+10
player_y_1 = Obj_player.y+10
player_y_2 = Obj_player.y-10
spawn_x = irandom_range(0,room_width)
spawn_y = irandom_range(0,room_height)

if (global.Num_enemy < 3)
{
	if can_spawn == true
	{
		can_spawn = false
		alarm[0] = 10
		if (player_x_1<spawn_x or player_x_2>spawn_x and player_y_1<spawn_y or player_y_2>spawn_y and 0<spawn_x<(room_width-10) and 10<y<(room_height-500))
			{
				instance_create_layer(spawn_x,spawn_y,2,Obj_enemy)
			}
	
	
	}
}
