function PlayerCollision(){
	var _collision = false;
	if (tilemap_get_at_pixel(collisionMap, x + hSpeed, y)) {
		x = x - x mod TILE_SIZE + (TILE_SIZE - 1)*(sign(hSpeed)==1)
		hSpeed = 0
		_collision = true
	}
	// Horizontal Tiles
	if (tilemap_get_at_pixel(collisionMap, x + hSpeed, y))
	{	hSpeed = 0;
		_collision = true;	} 
	if (tilemap_get_at_pixel(collisionMap, x + hSpeed, y))
	{	hSpeed = 0;
		_collision = true;	}

	// Horizontal Move Commit
	x += hSpeed;	
	
	//Vertical Tiles
	if (tilemap_get_at_pixel(collisionMap, x, y + vSpeed-TILE_SIZE/2))
	{	vSpeed = 0;
		_collision = true;	}
	if (tilemap_get_at_pixel(collisionMap, x, y + vSpeed))
	{	vSpeed = 0;
		_collision = true;	}
	
	// Vertical Move Commit
	y += vSpeed;
return _collision
}
