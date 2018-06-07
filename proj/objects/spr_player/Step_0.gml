/// @desc Every Step
get_input();
depth = -y;
script_execute(state);

if(!isTalking) {
    if(keyboard_check(ord("D")) && place_free(x + playerSpeed, y)) //Checks to see if the player is pressing down on D, if they are, do the actions inside
    {
        x += playerSpeed; //Move the player right by a certain amount of pixels per step, emulating movement
        image_speed = playerSpeed / (room_speed/2.5); //Keep the animation of the player walking smooth and even
        //sprite_index = sprSaraWalkRight; //Choose which sprite to select while walking right
    }
    if(keyboard_check(ord("W")) && place_free(x, y - playerSpeed))
    {
        y -= playerSpeed;
        image_speed = playerSpeed / (room_speed/2.5);
        //sprite_index = sprSaraWalkUp;
    }
    if(keyboard_check(ord("A")) && place_free(x - playerSpeed, y))
    {
        x -= playerSpeed;
        image_speed = playerSpeed / (room_speed/2.5);
        //sprite_index = sprSaraWalkLeft;
    }
    if(keyboard_check(ord("S")) && place_free(x, y + playerSpeed))
    {
        y += playerSpeed;
        image_speed = playerSpeed / (room_speed/2.5);
        //sprite_index = sprSaraWalkDown;
    }
    //Check to see when the player isn't pressing down one of these keys, and make it so the character stands still
    if(keyboard_check_released(ord("D")) || keyboard_check_released(ord("W")) || keyboard_check_released(ord("A")) || keyboard_check_released(ord("S")))
    {
        image_speed = 0;
        image_index = 0;
    }
}


if(collision_circle(x,y,64,o_npc_1,true,true))&& !isTalking{
	if(keyboard_check_pressed(ord("F"))){
		messageGiver = collision_circle(x,y,64,o_npc_1,true,true);
		PCTalking = self;
		isTalking = true;
		index1 = 0;
		index2 = 0;
		scrDialogue();
	}
}

if(!collision_circle(x,y,64,o_npc_1,true,true)){
	isTalking = false;
	instance_destroy(o_DialogueBox);
	instance_destroy(o_NameBox);
}

//Conversation Checks
if(isTalking){
	if(index1==02 && messageGiver.object_index == o_npc_1 && currentChoice ==0)
		fired = true;
	else if(index1==02 && messageGiver.object_index == o_npc_1 && currentChoice ==1)
		fired = false;
		
}

if(fired && !isTalking){
	show_message("You're fired!")
	fired = false;
}
