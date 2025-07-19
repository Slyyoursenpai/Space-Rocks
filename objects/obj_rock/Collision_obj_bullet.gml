obj_game.points +=10
audio_play_sound(rock_destroy, 0, false, random_range(0.5, 1.3));	

instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);

direction = random(360);

if sprite_index == spr_rock_big {

	sprite_index = spr_rock_small;
	instance_copy(true);
	
} else if instance_number(obj_rock) < 12 {

	sprite_index = spr_rock_big;
	x = -100;
} else {

 instance_destroy();
}

