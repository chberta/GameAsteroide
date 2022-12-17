/// @description Insert description here
// You can write your code in this editor
/*
if keyboard_check(vk_up){
	sprite_index = spr_nave_movendo;
	speed = 2;
}else if keyboard_check(vk_down){
	sprite_index = spr_nave_movendo;
	speed = -2 
}else{
	sprite_index = spr_nave_parada;
	speed = 0;
}
if keyboard_check(vk_left){
	direction += 3;	
}
if keyboard_check(vk_right){
	direction -= 3;
}
*/
if keyboard_check(vk_up){
	sprite_index = spr_nave_movendo;
	speed = veloc;
}else if keyboard_check(vk_down){
	sprite_index = spr_nave_movendo;
	speed = -veloc 
}else{
	sprite_index = spr_nave_parada;
	speed = lerp(speed, 0, 0.04);
}

if keyboard_check(vk_left){
	direc = 3;		
}else if keyboard_check(vk_right){
	direc = -3;
}else{
	direc = lerp(direc, 0, 0.08);		
}

if keyboard_check_pressed(vk_space){
	var inst = instance_create_layer(x, y, "Instances",obj_projetil);
	
	inst.speed = 6;
	inst.direction = direction+3;
	inst.image_angle = direction;	
}

direction +=direc;

image_angle = direction;

move_wrap(true, true, 0);
