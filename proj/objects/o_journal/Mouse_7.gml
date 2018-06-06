/// @description Insert description here
// You can write your code in this editor
journal_show ++;

if (journal_show ==1){
instance_create_layer(view_xview + view_wview * 0.5,view_yview + view_hview * 0.5,"Instances",o_open_journal);
audio_play_sound(snd_journal_flip,99,false);
journal_show = -1;
}

if (journal_show ==0){	
with(o_open_journal) instance_destroy();
audio_play_sound(snd_journal_flip,99,false);
}
