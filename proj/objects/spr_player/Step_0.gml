/// @desc Every Step
get_input();
depth = -y;
script_execute(state);

if(collision_circle(x,y,64,o_npc_1,true,true)){
	if(keyboard_check_pressed(ord("F"))){
		messageGiver = collision_circle(x,y,64,o_npc_1,true,true);
		PCTalking = self;
		scrDialogue();
	}
}