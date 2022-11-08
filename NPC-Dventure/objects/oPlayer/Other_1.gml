instance_create_layer(RESOLUTION_W-TILE_SIZE/2, RESOLUTION_H-TILE_SIZE/2, "Instances", oCompass);
Target = round(oCompass.direction/90)
room_goto(room + Target + 1)
