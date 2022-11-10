function PlayerStateFree(){

	//Movement
	hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

	PlayerCollision();

	//Update Sprite Index
	var _oldSprite = sprite_index;
	if (inputMagnitude != 0)
	{
		direction = inputDirection;
		sprite_index = spriteRun
	}
	else sprite_index = spriteIdle;
	if (_oldSprite != sprite_index) localFrame = 0;

	
if (keyAttack){
	if (sprite_index == spriteRun) {
	state = PlayerStateAttack;
	stateAttack = AttackSlash;
	} else {
	for (var i=0; i<7; i++) DropItems(x,y,2,oFragPlayer);
	state = PlayerStateAttack;
	stateAttack = AttackSpin;
	}
}
	//Update Image Index
	PlayerAnimateSprite();
	//Change State
	if (keyActivate)
	{
		//1. CHEck for an entity to activate
		//2. If there is nothing, or there is something, but it has no script - Roll!
		//3. Otherwise, there is something and it has a script! Activate!
		//4. If the thing we activate is an NPC, make it face towards us
		
		var _activateX = lengthdir_x(10, direction);
		var _activateY = lengthdir_y(10, direction);
		activate = instance_position(x+_activateX, y+_activateY, pEntity);
		
		if(activate == noone || (y-1<activate.y && CARDINAL_DIR == 1) || activate.entityActivateScript == -1)
		{
			state = PlayerStateRoll;
			moveDistanceRemaining = distanceRoll
		}
		else
		{
			ScriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs)
			
			if (activate.entityNPC)
			{
				with (activate)
				{
					direction = 360-other.direction
					image_index = CARDINAL_DIR
				}
			}
		}
		
	}
}