if (titleVisible > 0)
{
draw_sprite(sTitle,0,0,-RESOLUTION_H + titleVisible * RESOLUTION_H)
draw_set_alpha(titleVisible * abs(sin(get_timer()*0.000001*pi)))
draw_sprite(sTitle,1,0,0);
draw_set_alpha(1.0);
} else {
	global.targetX = -1
	room_goto(7);
}