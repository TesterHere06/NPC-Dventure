function PlayerStateDead(){
	hSpeed = 0;
	vSpeed = 0;
	
	//If just arrivinh in this state
	if (sprite_index != sPlayerDie) && (sprite_index != sPlayerDead)
	{
		// Update the sprite
		sprite_index = sPlayerDie;
		image_index = 0;
		image_speed = 0.7;
	}
	
	//Animation ending this frame?
	if (image_index + 1 > image_number)
	{
		if (sprite_index == sPlayerDead) {
			global.targetX = -1;
			global.targetY = -1;
			RoomTransition(TRANS_TYPE.ZOOM, rVillage);
		} else {
			image_index = 0;
			sprite_index = sPlayerDead
		}
	}
}