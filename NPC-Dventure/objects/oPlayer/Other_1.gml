instance_create_layer(room_width/2-TILE_SIZE/2, room_height/2-TILE_SIZE/2, "Instances", oCompass);
Target = round(oCompass.direction/90)
room_goto(room + Target + 1)
