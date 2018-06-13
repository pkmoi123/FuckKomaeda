/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_eras);
draw_sprite(sprite_index,image_index,x,y);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

if(txt == ""){
	draw_text(x,y,"noun");
}
else{
	if(blink == false) || (selected == false){
		draw_text(x,y,txt);
	}
	else{
		draw_text(x,y,txt + "|");
	}
}

draw_set_halign(fa_left); //reset alignment
draw_set_valign(fa_top);