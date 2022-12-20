/// @description Insert description here
audio_play_sound(snd_melhoria,1, false);
alarm[2] = 600;

dano_nave = 2;
var inst = instance_create_layer(x, y, "Instances",obj_projetil);
inst.speed = 22;

with(other){
	instance_destroy();
}
