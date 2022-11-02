function PlayerCollision(){
	var _collision = false;
	if (tilemap_get_at_pixel(collisionMap, x + hSpeed, y)) {
		hSpeed = 0
		_collision = true
	}
	// Horizontal Tiles
	if (tilemap_get_at_pixel(collisionMap, x + hSpeed - 3, y))
	{	hSpeed = 0;
		_collision = true;	} 
	if (tilemap_get_at_pixel(collisionMap, x + hSpeed + 3, y))
	{	hSpeed = 0;
		_collision = true;	}

	// Horizontal Move Commit
	x += hSpeed;	
	
	//Vertical Tiles
	if (tilemap_get_at_pixel(collisionMap, x, y + vSpeed - 8))
	{	vSpeed = 0;
		_collision = true;	}
	if (tilemap_get_at_pixel(collisionMap, x, y + vSpeed))
	{	vSpeed = 0;
		_collision = true;	}
	
	// Vertical Move Commit
	y += vSpeed;
return _collision
}
