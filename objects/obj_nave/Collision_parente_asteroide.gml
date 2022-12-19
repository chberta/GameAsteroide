/// @description Insert description here
if alarm[0] <= 0{
	if escudo == true{
		escudo = false; // perde escudo
	}else{
		vida -= 1; // perde vida
	}
	
	with(other){
		vida -= 1; 
	}
	
	alarm[0] = 180;	

}
		