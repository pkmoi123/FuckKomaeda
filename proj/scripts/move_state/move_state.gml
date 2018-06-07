/// move_state
// Get Direction
dir = point_direction(0,0,xaxis,yaxis);
// Get Length
if (xaxis == 0) && (yaxis == 0){
	len = 0;
} else{
	len = spd;
}
// Get the speed variables
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);
if(isTalking){
hspd = 0;
vspd = 0;
}

// Horizontal Collisions
if (place_meeting(x+hspd, y, obj_wall)){
	while(!place_meeting(x+sign(hspd),y, obj_wall)){
		x+= sign(hspd);
	}
	hspd = 0;
}
x += hspd;

// Vertical Collisions
if (place_meeting(x, y+vspd, obj_wall)){
	while(!place_meeting(x,y+sign(vspd), obj_wall)){
		y+= sign(vspd);
	}
	vspd = 0;
}
y += vspd;