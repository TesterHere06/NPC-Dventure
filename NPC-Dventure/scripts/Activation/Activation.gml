function ActivateLiftable(id)
{
	if (global.iLifted == noone)
	{
		PlayerActOutAnimation(sPlayerLift, -1);
		
		spriteIdle = sPlayerCarrying;
		spriteRun = sPlayerRunCarrying;
		
		global.iLifted = id;
		
		with (global.iLifted)
		{
			lifted = true;
			persistent = true;
		}
	}
}

function ActivateHatCat()
{
	var _hasHat = (global.iLifted != noone) && (global.iLifted.object_index == oHat);
	switch (global.questStatus[? "TheHatQuest"])
	{
		case 0: //not started
		{
			//player might have brought the hat back anyway
			if (_hasHat)
			{
				//complete quest
				NewTextBox("Wow didn't even talk to me !\nAnd picked up some random hat on the ground", 2);
				global.questStatus[? "TheHatQuest"] = 2;
				with (oQuestNPC) sprite_index = sQuestieHat;
				with (oHat) instance_destroy();
				global.iLifted = noone;
				with(oPlayer)
				{
					spriteIdle = sPlayer;
					spriteRun = sPlayerRun;
				}
			}
			else
			{
				//offer quest
				NewTextBox("Hello there! You are the great hero we've been waiting for!",2);
				NewTextBox("Now could you please get me a sandwich!\nI mean my missing hat?", 2,["4:Fine alright.", "5:Nah just not feeling like it"]);
			}
			
		}break;
		
		case 1: //quest in progress
		{
			if (_hasHat)
			{
				//complete quest
						NewTextBox("Wow you found my hat, thanks!", 2);
				global.questStatus[? "TheHatQuest"] = 2;
				with (oQuestNPC) sprite_index = sQuestieHat;
				with (oHat) instance_destroy();
				global.iLifted = noone;
				with(oPlayer)
				{
					spriteIdle = sPlayer;
					spriteRun = sPlayerRun;
				}
			}
			else
			{
				//clue reminder
				NewTextBox("It really should be somewhere around here. !\nLook around carefully!");
			}
			
		}break;
		case 2: //quest already completed
		{
			
		} break;
	}
}