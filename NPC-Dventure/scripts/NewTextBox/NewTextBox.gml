function NewTextBox(_message, _background = 1)
{
	var _obj = instance_exists(oText) ? oTextQueued : oText;
	
	with (instance_create_layer(0, 0, "Instances", _obj))
	{
		textMessage = _message;
		background = _background;
		originInstance = instance_exists(other) ? other.id : noone;
	}
	
	with (oPlayer)
	{
		if (state != PlayerStateLocked)
		{
			lastState = state;
			state = PlayerStateLocked;
		}
	}
}