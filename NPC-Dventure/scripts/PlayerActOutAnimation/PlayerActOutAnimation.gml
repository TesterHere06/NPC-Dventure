//Carry out an animation and optionally carry out a script when the animation ends
/// @arg Sprite
/// @arg E
function PlayerActOutAnimation(sprite, endScript){
	state = PlayerStateAct;
	sprite_index = sprite;
	if (argument_count > 1) animationEndScript = endScript;
	localFrame = 0;
	image_index = 0;
	PlayerAnimateSprite();
}