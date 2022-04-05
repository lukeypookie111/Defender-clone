//@Draw event for drawing the start of terrain looking b0ttom
// You can write your code in this editor
x_old = room_width;

room_w = room_width;
y = room_height-20
y_old = y;
c = 0
for(var i = 0; i <= room_w ; i+=1)
{
	
	c += 5
	y += Randomised_numbers[i];
	///if (y >= room_height)
	//{
	//	y=room_height
	//}
	width_x = room_width - c
	draw_line_color(x_old,y_old,width_x,y,c_red,c_red);
	x_old = width_x;
	y_old = y;
}