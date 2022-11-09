///@desc Initialise & Globals
randomise();

global.gamePaused = false;
global.textSpeed = .75;
global.targetRoom = -1;
global.targetX = -1;
global.targetY = -1;
global.targetDirection = 0;
global.playerHealthMax = 3
global.playerHealth = global.playerHealthMax

global.iCamera = instance_create_layer(0,0, layer, oCamera);

room_goto(ROOM_START);
