/// @description Insert description here
// You can write your code in this editor
y = room_height-20
num_cluster = 0
for (var b = 0; b<room_width +1; b+=1)
{
	Randomised_numbers[b] =global.Randomised_numbers[b]
	y += Randomised_numbers[b];
	if Randomised_numbers[b] == 0
			{
				cluster_distance = 50
				num_cluster += 1
				if num_cluster >=3
				{	
					cluster_distance =256
					num_cluster = 0	
				}
				var house = instance_create_layer(b, y, "Instances", Obj_house);
				num_houses += 1
				with (house)
				{
					House_type =irandom_range(0,5)
					

					switch(House_type)
					{
						case 0:object_set_sprite(Obj_house,Spr_house_1) break;
						case 1:object_set_sprite(Obj_house,Spr_house_2)break;
						case 2:object_set_sprite(Obj_house,Spr_house_3)break;
						case 3:object_set_sprite(Obj_house,Spr_house_4)break;
						case 4:object_set_sprite(Obj_house,Spr_house_1)break;
						default:object_set_sprite(Obj_house,Spr_house_3);
					}
				
				
				
				}
				b += cluster_distance
				if b > room_width 
				{
					b= room_width
				
				}
			}
}