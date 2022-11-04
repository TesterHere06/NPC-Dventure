function ScreenShake(){
	with(global.iCamera){
			if (argument0 > shakeRemain)
			{
					shakeMagnitude = argument0;
					shakeRemain = shakeMagnitude;
					shakeLength = argument1;
			}
	}
}