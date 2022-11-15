if (type == TRANS_TYPE.SLIDE)
{
	draw_set_color(c_black);
	draw_rectangle(0,0,width,percent * heightHalf, false);
	draw_rectangle(0,height,width,height-(percent * heightHalf), false);
}

if (type == TRANS_TYPE.FADE)
{
	draw_set_alpha(percent);
	draw_set_color(c_black);
	draw_rectangle(0, 0, width, height, false);
	draw_set_alpha(1)
}

if (type == TRANS_TYPE.ZOOM)
{
	draw_set_color(c_black);
	draw_circle(width * 0.5, height * 0.5, percent * (FRAME_RATE * 3.5), false);
}