function PlayerCollision(){
	var _collision = false;
	// Horizontal Tiles
	if (tilemap_get_at_pixel(collisionMap, x + hSpeed, y))
	{	x = x - x mod TILE_SIZE + (TILE_SIZE - 1)*(sign(hSpeed)==1)
		hSpeed = 0
		_collision = true;	} 
	// Horizontal Move Commit
	x += hSpeed;	
	
	//Vertical Tiles
	if (tilemap_get_at_pixel(collisionMap, x, y + vSpeed))
	{	y = y - y mod TILE_SIZE + (TILE_SIZE - 1)*(sign(vSpeed)==1)
		vSpeed = 0
		_collision = true;	}
	
	// Vertical Move Commit
	y += vSpeed;
return _collision
}
