/// @description Move thru dialogue
// You can write your code in this editor

if(keyboard_check_pressed(vk_space)&&position>=string_length(myMessage[messageIndex])){
	++messageIndex;
	position = 0;
	currentText = "";
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
else if(keyboard_check_pressed(vk_space)&&position<string_length(myMessage[messageIndex])){
	alarm[0] = 5;
}
//Add letters over time
if(messageIndex<array_length_1d(myMessage)){
	if(string_length(currentText)<string_length(myMessage[messageIndex])){
		currentText = string_copy(myMessage[messageIndex],1,position);
		++position;
	}
}