global.targetX = x
global.targetY = y
if (x>room_width) {
	global.targetX = TILE_SIZE
	direction = 0
}
else if (y>room_height) {
	global.targetY = TILE_SIZE
	direction = 90
}
else if (0>x) {
	global.targetX = room_width - TILE_SIZE
	direction = 180
}
else if (0>y) {
	global.targetY = room_height - TILE_SIZE
	direction = 270
}
Destination = room + (CARDINAL_DIR + 1)
for (var roomtable = [[8,2], [5,7], [6,2],[9,2],[10,2],[11,2]]; array_length(roomtable) > 0;) {
	replace = array_pop(roomtable)
	if (Destination == replace[0]) Destination = replace[1]
}
if not (alarm[1]) {
	alarm[1] = .1*room_speed
}