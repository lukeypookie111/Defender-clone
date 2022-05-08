// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_target_house(House_list, self_ship){
	
	House_number = irandom(array_length(House_list)-1)
	show_debug_message(irandom(array_length(House_list)-1))
	target_house =  House_list[House_number]
	if instance_exists(target_house)
	{
	self_ship.has_target = true
	target_house.is_targeted = true
	target_house.is_targeted_by = self_ship
	
	}
	return target_house
}