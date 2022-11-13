// Inherit the parent event
event_inherited();

state = ENEMYSTATE.WANDER;
sprMove = sSlime;
sprAttack = sSlimeAttack;

enemyScript[ENEMYSTATE.WANDER] = SlimeWander
enemyScript[ENEMYSTATE.CHASE] = SlimeChase
enemyScript[ENEMYSTATE.ATTACK] = SlimeAttack