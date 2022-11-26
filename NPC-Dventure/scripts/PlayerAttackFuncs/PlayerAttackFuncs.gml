function HurtPlayer(_direction, _force, _damage)
{
		if (oPlayer.invulnerable <= 0)
		{
			global.playerHealth = max(0, global.playerHealth-_damage);
		
			if (global.playerHealth > 0)
			{
				with (oPlayer)
				{
					state = PlayerStateBonk;
					direction = _direction-180;
					moveDistanceRemaining =  _force;
					ScreenShake(2,10);
					flash = 0.7;
					invulnerable = 60;
					flashShader = shRedFlash;
				}
			}
			else
			{
				// Kill the player	
				with(oPlayer) state = PlayerStateDead;
			}
		}
}

function AttackSlash(){
	//Attack just started
if(sprite_index != global.AttackSprite)
{
	//Set up animation
	sprite_index = global.AttackSprite;
	localFrame = 0;
	image_index = 0;
	
	//Clear hit list
	if (!ds_exists(hitByAttack, ds_type_list)) hitByAttack = ds_list_create();
	ds_list_clear(hitByAttack);
}

CalcAttack(sPlayerAttackSlashHB);

//Update Sprite
PlayerAnimateSprite();

if (animationEnd)
{
	state = PlayerStateFree;
	animationEnd = false;
}
}

function AttackSpin(){
	
//Clear hit list
if (!ds_exists(hitByAttack, ds_type_list)) hitByAttack = ds_list_create();
ds_list_clear(hitByAttack);

CalcAttack(sTriger);

//Update Sprite
	if (CARDINAL_DIR > 1) {
	image_index -= sprite_get_speed(sprite_index) / FRAME_RATE;
	} else {
	image_index += sprite_get_speed(sprite_index) / FRAME_RATE;
	}
if (image_index >= sprite_get_number(sprite_index) or image_index == 0)
{
	image_index -= sprite_get_number(sprite_index)
	state = PlayerStateFree;
}
}

function CalcAttack(_maskindex){
//Use attack hitbox & check for hits
mask_index = _maskindex;
var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x,y,pEntity,hitByAttackNow,false);
if (hits > 0)
{
	for (var i = 0; i < hits; i++)
	{
		//If this instance has not yet been hit by this attack, hit it!
		var hitID = hitByAttackNow[| i];
		if (ds_list_find_index(hitByAttack, hitID) == -1)
		{
			ds_list_add(hitByAttack, hitID);
			with (hitID){
				
				if (object_is_ancestor(object_index, pEnemy))
				{
					HurtEnemy(id, 5, other.id, 10);
				}
				
				else if (entityHitScript != 1) script_execute(entityHitScript);
				
			}
		}
	}
}

ds_list_destroy(hitByAttackNow);
mask_index = HeroIdle;
}

function HurtEnemy(_enemy, _damage, _source, _knockback)
{
	with (_enemy)
	{
		if (state != ENEMYSTATE.DIE)
		{
			enemyHP	-= _damage;
			flash = 1;
			
			//Hurt or dead?
			if (enemyHP <= 0)
			{
				state = ENEMYSTATE.DIE;	
			}
			else
			{
				if (state != ENEMYSTATE.HURT) statePrevious = state;
				state = ENEMYSTATE.HURT;
			}
			
			image_index = 0;
			if (_knockback != 0)
			{
				var _knockDirection	= point_direction(x,y,(_source).x,(_source).y);
				xTo = x - lengthdir_x(_knockback, _knockDirection);
				yTo = y - lengthdir_y(_knockback, _knockDirection);
			}
		}
	}
}