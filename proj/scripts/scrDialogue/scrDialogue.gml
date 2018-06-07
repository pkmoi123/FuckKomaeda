///Begin dialogue btwn player and npc
dialogueBox = instance_create_layer(view_wport[view_current]/2, view_hport[view_current]/2,"Dialogue",o_DialogueBox);
with(dialogueBox){
	maxLength = sprite_width - 48;
	maxHeight = sprite_height - 48;//adjust number for asset
	font_dialogue();
	myMessage = messageGiver.npcDia[0,0];
}