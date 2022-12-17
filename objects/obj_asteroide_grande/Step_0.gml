/// @description Insert description here
// You can write your code in this editor
move_wrap(true, true, 0);

image_angle += rotac;

if (vida <= 0 ){
	
	repeat(3){
		instance_create_layer(x, y, "instances", obj_asteroide_medio);	
	}
	
	instance_destroy();
}
