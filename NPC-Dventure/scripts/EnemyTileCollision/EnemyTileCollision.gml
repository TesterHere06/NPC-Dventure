function EnemyTileCollision(){
	var _collision = false
	if (tilemap_get_at_pixel(collisionMap, x + hSpeed, y)) {
		x = x - x mod TILE_SIZE + (TILE_SIZE - 1)*(sign(hSpeed)==1)
		hSpeed = 0
		_collision = true;
		} 
	x += hSpeed
	if (tilemap_get_at_pixel(collisionMap, x,y + vSpeed)) {
		y = y - y mod TILE_SIZE + (TILE_SIZE - 1)*(sign(hSpeed)==1)
		vSpeed = 0
		_collision = true;
		} 
	y += vSpeed
	return _collision;
}