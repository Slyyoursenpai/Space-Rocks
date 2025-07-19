effect_create_above(ef_firework, x, y, 1, c_white);
instance_destroy();
// obj_game.points -= 10; persist score todo
obj_game.alarm[0] = 120;

audio_play_sound(spaceShipDestroyed, 0, false);