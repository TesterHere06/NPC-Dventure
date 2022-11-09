function ActivateLiftable(id)
{
	if (global.iLifted == noone)
	{
		PlayerActOutAnimation(sPlayerLift, -1);
		global.iLifted = id;
		
		with (global.iLifted)
		{
			lifted = true;
			persistent = true;
		}
	}
}