///Begin dialogue btwn player and npc
dialogueBox = instance_create_layer(view_wport[view_current]/2, view_hport[view_current]/2,"Dialogue",o_DialogueBox);
with(dialogueBox){
	maxLength = sprite_width;
	maxHeight = sprite_height;//adjust number for asset
	myMessage = messageGiver.npcDia[0,0];
}