/// Create choices for player
for(i=1; i<array_length_2d(messageGiver.npcDia,index1); i++){
	index2++;
	choiceBox[i-1] = instance_create_layer(view_wport[view_current]/2,(view_hport[view_current]-200)+(i*40),"Dialogue", o_ChoiceBox);
	with (choiceBox[i-1]){
		maxLength = sprite_width - 10;
		maxHeight = sprite_height+30;
		myMessage = messageGiver.npcDia[index1,index2];
		image_speed = 0;
	}
}
showingChoices = true;