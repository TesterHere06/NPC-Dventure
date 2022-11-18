// Inherit the parent event
event_inherited();

state = ENEMYSTATE.WANDER;
sprMove = sBat;
sprAttack = sBat;
sprDie = sBatDie;
sprHurt = sBatHurt;

entityDropList = choose
(
	[oCoin],
	[oCoin,oCoin],
	[oBombDrop],
)

enemyScript[ENEMYSTATE.WANDER] = BatWander
enemyScript[ENEMYSTATE.CHASE] = BatChase
enemyScript[ENEMYSTATE.ATTACK] = -1;
enemyScript[ENEMYSTATE.HURT] = SlimeHurt;
enemyScript[ENEMYSTATE.DIE] = SlimeDie;