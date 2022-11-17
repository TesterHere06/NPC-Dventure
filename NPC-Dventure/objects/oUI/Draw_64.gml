/// @desc Draw UI
var _playerHealth = global.playerHealth
var _playerHealthMax = global.playerHealthMax
var _playerHealthFrac = frac(_playerHealth)
_playerHealth -= _playerHealthFrac

for (var i = 1; i <= _playerHealthMax; i++) {
	var _imageIndex = (i > _playerHealth);
	if (i == _playerHealth+1) _imageIndex += (_playerHealthFrac > 0) + (_playerHealthFrac > 0.25) + (_playerHealthFrac > 0.5);
	draw_sprite(sHealth,_imageIndex,8 + ((i-1)*16),8);
}

var _xx,_yy;

_xx = 12;
_yy = 35;
draw_sprite(sCoin,0,_xx,_yy)

draw_set_color(c_black);
draw_set_font(fText);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
_xx += sprite_get_width(sCoin)
_yy = 23;
var _str = string(global.playerMoney);
draw_text(_xx+1,_yy,_str);
draw_text(_xx-1,_yy,_str);
draw_text(_xx,_yy+1,_str);
draw_text(_xx,_yy-1,_str);
draw_set_color(c_white);
draw_text(_xx, _yy, _str)