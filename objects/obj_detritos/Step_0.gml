/// @description Insert description here

image_angle += rotac;

image_alpha -= 0.02;

if image_alpha <= 0 {
	instance_destroy();
}

