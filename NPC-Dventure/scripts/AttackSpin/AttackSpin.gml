// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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