///@argResponse
function DialogueResponses(){
switch(argument0){
	case 0: break;
	case 1: NewTextBox("Bye", 1); break;
	case 2: NewTextBox("Oh well then go do stuff and uhh bye", 1, ["3:Nah, not feeling like it","0:Oke welp."]); break;
	case 3: {
		NewTextBox("Mean...")
		game_end();
	}
	case 4:
	{
		NewTextBox("Thanks!", 2);
		NewTextBox("I think it should be somewhere around here?", 2);
		global.questStatus[? "TheHatQuest"] = 1;
	} break;
	case 5: NewTextBox(":(", 2); break;
	default: break;
}



}