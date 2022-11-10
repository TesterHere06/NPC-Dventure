//Carry out an animation and optionally carry out a script when the animation ends
/// @arg Sprite
/// @arg E
function PlayerActOutAnimation(sprite, endScript){
	state = PlayerStateAct;
	sprite_index = sprite;
	localFrame = 0;
	image_index = 0;
	PlayerAnimateSprite();
}