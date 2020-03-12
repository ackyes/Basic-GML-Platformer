/// @description Add platformer mechanics

// Get keyboard inputs
//keyboard_check(key) will return 1 if presssed or 0 if not pressed
key_right = keyboard_check(ord("D")); // ord ('D') for letter D
key_left = keyboard_check(ord("A"));	// ord ('A') for letter A
key_jump = keyboard_check(ord("W"));

// Work out where to move horizontally
hsp = (key_right - key_left) * hsp_walk;
// Work out where to move vertically
vsp = vsp + grv;
// Work out if we should jump
if ( place_meeting(x, y + 1, oWall) ) and (key_jump)
{
	vsp = vsp_jump;
}
// Check for horizontal collisions
var onepixel = sign(hsp) // sign() returns -1, 0 , or 1
if (place_meeting(x + hsp, y, oWall) ) 
{
	// move as close as we can
	// move 1px towards the Wall until we're 1px away
	while (!place_meeting(x + onepixel, y, oWall) )
	{
		x = x + onepixel;
	}
	hsp = 0; // once we're 1 pixel away, stop moving
}
	
// Check for veritcal collisions
var onepixel = sign(vsp);
if (place_meeting(x, y + vsp, oWall) )
{
	// move as close as we can then stop
	while (!place_meeting(x, y + onepixel, oWall) )
	{
		y = y + onepixel;
	}
	vsp = 0;
}
// Move character by hsp x = x position of the player on the canvas

// update x
x = x + hsp;
// update y
y = y + vsp;