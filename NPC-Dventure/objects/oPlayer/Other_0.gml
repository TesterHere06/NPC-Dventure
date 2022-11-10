if (CARDINAL_DIR!=round(direction/45)/2) {
	if (x>RESOLUTION_W) {
		direction = 0
		}
	if (y>RESOLUTION_H) {
		direction = 90
		}
	if (0>x) {
		direction = 180
		}
	if (0>y) {
		direction = 270
		}
}
global.targetDirection = direction;
global.targetX = abs(x - RESOLUTION_W*2)-(x < 0)*10
if (x>RESOLUTION_W or x < 0) {
global.targetY = y
} else {
global.targetY = abs(y - RESOLUTION_H*(2.05-0.15*(y<0)))
}
Destination = room + (CARDINAL_DIR + 1)
for (var roomtable = [[8,2], [7,3], [5,3], [6,2]]; array_length(roomtable) > 0;) {
	replace = array_pop(roomtable)
	if (Destination == replace[0]) Destination = replace[1]
}
if not (alarm[0]) alarm[0] = room_speed*0.1