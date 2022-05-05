// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generate_list_num(){
global.Randomised_numbers =ds_list_create();


	for (var b = 0;b<room_width+1;b+=1)
	{
		
		global.Randomised_numbers[b] = irandom_range(-1,1)
	
	
	}

}