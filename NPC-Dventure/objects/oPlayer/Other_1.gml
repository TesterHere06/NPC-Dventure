Direction = round(point_direction(camera_get_view_x(view_camera[0])+RESOLUTION_W/2,camera_get_view_y(view_camera[0])+RESOLUTION_H/2,x,y)/90)
Destination = room + Direction + 1
for (var roomtable = [[8,2], [7,3], [6,2]]; array_length(roomtable) > 0;) {
	replace = array_pop(roomtable)
	if (Destination == replace[0]) Destination = replace[1]
}

room_goto(Destination)
