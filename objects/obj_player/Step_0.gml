if keyboard_check(vk_up){  // @todo -> add wasd movements
	motion_add(image_angle, 0.1)
}

if keyboard_check(vk_left){
	image_angle += 4;
}

if keyboard_check(vk_right){
	image_angle -= 4;
}

if keyboard_check(vk_down){
	speed *=0.99;
}

move_wrap(true, true, 0);

if mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space) {
	instance_create_layer(x, y, "Instances", obj_bullet);
	audio_play_sound(spaceShipFire, 0, false, 1, 0, random_range(0.8, 1.2));
}