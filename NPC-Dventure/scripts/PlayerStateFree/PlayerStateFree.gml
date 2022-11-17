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
		
		var _activateX = x + lengthdir_x(10, direction);
		var _activateY = y + lengthdir_y(10, direction);
		var _activateSize = 4
		var _activateList = ds_list_create()
		activate = noone
		var _entitiesFound = collision_rectangle_list(
			_activateX - _activateSize,
			_activateY - _activateSize,
			_activateX + _activateSize,
			_activateY + _activateSize,
			pEntity,
			false,
			true,
			_activateList,
			true
		)
		
		while (_entitiesFound > 0)
		{
			var _check  = _activateList[| --_entitiesFound];
			if (_check != global.iLifted) && (_check.entityActivateArgs != 1)
			{
				activate = _check;
				break;
			}
		}
		
		ds_list_destroy(_activateList)
		
		if(activate == noone) || (y-1<activate.y && CARDINAL_DIR == 1)
		{
			if (global.iLifted != noone) {
				PlayerThrow();
			} else {
			state = PlayerStateRoll;
			moveDistanceRemaining = distanceRoll
			}
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
	
	if (keyItem) && (!keyActivate) && (global.playerHasAnyItems) && (global.playerEquipped != ITEM.NONE)
	{
		switch (global.playerEquipped)
		{
			case ITEM.BOMB: UseItemBomb(); break;
			case ITEM.BOW: UseItemBow(); break;
			case ITEM.HOOK: UseItemHook(); break;
			default: break;
		}
	}
}