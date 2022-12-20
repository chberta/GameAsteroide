/// @description Insert description here
// You can write your code in this editorcc
move_wrap(true, true, 0);

image_angle += rotac;

if (vida <= 0 ){
	audio_play_sound(snd_explosao,1, false);
	global.pont += 20;
	repeat(5){
		instance_create_layer(x,y,"instances", obj_detritos);
	}
	instance_destroy();
}
