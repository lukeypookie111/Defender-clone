//@Draw event for drawing the start of terrain looking b0ttom

x_old = room_width;

room_w = room_width;
y = room_height-20
y_old = y;
c = 0
for(var i = 0; i < room_w ; i+=1)
{
	
	c += 5
	width_x = room_width - c
	y += global.Randomised_numbers[i];
	draw_line_color(x_old,y_old,width_x,y,c_red,c_red);
	x_old = width_x;
	y_old = y;
}