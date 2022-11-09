global.targetDirection = direction;
global.targetX = abs(x - RESOLUTION_W*2)
global.targetY = y
Destination = room + CARDINAL_DIR + 1
for (var roomtable = [[8,2], [7,3], [6,2]]; array_length(roomtable) > 0;) {
	replace = array_pop(roomtable)
	if (Destination == replace[0]) Destination = replace[1]
}

room_goto(Destination)
