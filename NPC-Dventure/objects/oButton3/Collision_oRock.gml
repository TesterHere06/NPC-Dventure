if (!instance_exists(oBomb)) instance_create_layer(x+48, y, "Instances", oBomb);
oRock.entityHitScript = entityHitDestroy;
other.entityHitScript = EntityHitSolid;