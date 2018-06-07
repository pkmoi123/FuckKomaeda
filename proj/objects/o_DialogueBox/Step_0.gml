/// @description Move thru dialogue
// You can write your code in this editor
if(keyboard_check_pressed(vk_space)){
	++messageIndex;
	if(messageIndex>= array_length_1d(myMessage))&& !hasChoices{
		with(o_DialogueBox){
			instance_destroy();
		spr_player.alarm[0] = 10;
		}
		with(o_NameBox){
			instance_destroy();
		spr_player.alarm[0] = 10;
		}
	}
	else if (messageIndex>= array_length_1d(myMessage)&& hasChoices){
		with(o_DialogueBox)
			instance_destroy();
		with(o_NameBox)
			instance_destroy();
		scrShowChoices();
	}	
}