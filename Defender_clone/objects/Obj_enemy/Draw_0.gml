/// @description Insert description here
// You can write your code in this editor
draw_sprite(Spr_Enemy,-1,x,y)
if has_target
{
	if instance_exists(target_house)
	{
		draw_arrow(x,y, target_house.x,target_house.y, 3)
	}
}