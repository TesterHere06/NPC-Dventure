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
	default: break;
}



}