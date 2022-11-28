function PlayerStateDead(){
	hSpeed = 0;
	vSpeed = 0;
	
	//If just arrivinh in this state
	if (sprite_index != global.DieSprite) && (sprite_index != global.DeadSprite)
	{
		// Update the sprite
		sprite_index = global.DieSprite;
		image_index = 0;
		image_speed = 0.7;
	}
	
	//Animation ending this frame?
	if (image_index + 1 > image_number)
	{
		if (sprite_index == global.DeadSprite) {
			image_speed = 0;
			global.targetX = -1;
			global.targetY = -1;
			RoomTransition(TRANS_TYPE.ZOOM, rVillage);
		} else {
			image_index = 0;
			sprite_index = global.DeadSprite
		}
	}
}