 /// @description Insert description here
var _c = make_color_rgb(131, 68, 87);
var _texto = "";
var _largura = display_get_gui_width();
var _altura = display_get_gui_height();

draw_set_font(fnt_basica);

if room == rm_menu {
	
	if alpha <= 0 {
		alpha_add = 0.02;
	}else if alpha >= 1{
	    alpha_add -= 0.02;
	}
	
	alpha += alpha_add;
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text_ext_color(_largura/2, _altura/2, "NESTE JOGO VOCE DEVE DESVIAR DOS ASTEROIDES E DESTRUI-LOS PARA GANHAR PONTOS, PARA VENCER, CHEGUE EM 1000 PONTOS. BOA SORTE :) ", 30, 500, c_white, c_white, c_white, c_white, 1 );
	draw_text_color(_largura/2, _altura- _altura/3, "Aperte SPACO para COMECAR", _c, _c, _c, _c, alpha );
	if keyboard_check_pressed(vk_space){
		room_goto(rm_jogo);
	}
	
}else if room == rm_jogo{
	//audio_play_sound(Sound5,1, false);
	draw_set_font(fnt_basica2);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
		if obj_nave.vida > 1 {
		 _texto = "Vidas: ";
		}else if obj_nave.vida == 1{
			 _texto = "Vida: ";
		}
	draw_text_color(20, 20,_texto + string(obj_nave.vida), _c, _c, _c, _c, 1);
	draw_text_color(20, 40, "Pontuacao: " + string(global.pont), c_white, c_white, c_white,c_white, 1 );
	
} else if room == rm_final{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text_ext_color(_largura/2, _altura/2, "PARABENS! VOCE CONSEGUIU ATINGIR 1000 PONTOS, SE QUISER JOGAR NOVAMENTE, APERTE  'R'", 80, 900, _c, _c, _c, _c, 1 );
	
	if keyboard_check_pressed(ord("R")){
		game_restart();
	}
	
	

}



