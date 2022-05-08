// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @arg array
/// @arg pos
function generate_house_list(current_x){
index = 0
		for (var i = 0; i < instance_number(Obj_house); ++i;)
		{
			house_x = instance_find(Obj_house,i)
			if (sqrt(sqr((current_x)-house_x.x)))< 624
			{
				house[index] = instance_find(Obj_house,i);
				index++
				
			}
		}
		return house
}