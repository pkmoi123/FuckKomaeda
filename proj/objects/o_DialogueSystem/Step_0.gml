/// @description Choosing a choice
// You can write your code in this editor
if(showingChoices){
	for(i = 0; i < array_length_1d(choiceBox);i++){
		choiceBox[i].image_index = 0;
	}
	if(keyboard_check_pressed(vk_down)||keyboard_check_pressed(ord("S"))){
		currentChoice = clamp(++currentChoice, 0, array_length_1d(choiceBox)-1);
	}
	if(keyboard_check_pressed(vk_up)||keyboard_check_pressed(ord("W"))){
		currentChoice = clamp(--currentChoice, 0, array_length_1d(choiceBox)-1);
	}
	choiceBox[currentChoice].image_index = 1;

	
}
