/// @desc Creating variables
state = PlayerStateFree;
stateAttack = AttackSlash;
hitByAttack = -1;
lastState = state;

if layer_tilemap_exists(layer_get_id("Cave"), layer_tilemap_get_id(layer_get_id("Cave")))
{
	collisionMap = layer_tilemap_get_id(layer_get_id("Cave"));
} else {
	collisionMap = layer_tilemap_get_id(layer_get_id("Col"));
}

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 2.0;
speedRoll = 3.0;
speedBonk = 1.5;
speedHook = 3.0;

distanceRoll = 52;
distanceBonk = 40;
distanceBonkHeight = 12;
distanceHook = 88;

z=0;
invulnerable = 0;
flash = 0;
flashShader = shRedFlash;
animationEndScript = -1;
spriteRoll = sPlayerRoll;
spriteRun = sPlayerRun;
spriteIdle = sPlayer;
localFrame = 0;

hook = 0;
hookX = 0;
hookY = 0;
hookSize = sprite_get_width(sHookChain);

if (global.targetX != -1)
{
	x = global.targetX;
	y = global.targetY;
	direction = global.targetDirection;
}

if (global.iLifted != noone)
{
	spriteIdle = sPlayerCarrying;
	spriteRun = sPlayerRunCarrying;
	sprite_index = spriteIdle;
}