global.targetDirection = direction;
global.targetX = abs(x - RESOLUTION_W*2)-(CARDINAL_DIR == 2)*10
if (CARDINAL_DIR == 0 or CARDINAL_DIR == 2) {
global.targetY = y
} else {
global.targetY = abs(y - RESOLUTION_H*(2.05-0.15*(CARDINAL_DIR == 3)))
}
Destination = room + CARDINAL_DIR + 1
for (var roomtable = [[8,2], [7,3], [5,3], [6,2]]; array_length(roomtable) > 0;) {
	replace = array_pop(roomtable)
	if (Destination == replace[0]) Destination = replace[1]
}
if not (alarm[0]) alarm[0] = room_speed*0.1