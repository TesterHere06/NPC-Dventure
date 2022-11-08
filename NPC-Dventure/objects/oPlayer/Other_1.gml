Direction = round(point_direction(room_width/2-TILE_SIZE/2,room_height/2-TILE_SIZE/2,x,y)/90)
Destination = room + Direction + 1
for (var roomtable = [[8,2], [6,2]]; array_length(roomtable) > 0;) {
	replace = array_pop(roomtable)
	if (Destination == replace[0]) Destination = replace[1]
}

room_goto(Destination)
