/// @description Add platformer mechanics

// Get keyboard inputs
//keyboard_check(key) will return 1 if presssed or 0 if not pressed
key_right = keyboard_check(vk_right); // ord ('D') for letter D
key_left = keyboard_check(vk_left);	// ord ('A') for letter A
key_jump = keyboard_check(vk_space);

// Work out where to move horizontally
hsp = (key_right - key_left) * hsp_walk;
/*
	Right Key onky is pressed:
	hsp = (1 - 0) * 4; = hsp = 1 * 4 or 1
	Left Key only is pressed:
	hsp = (0 - 1) * 4 = -1 * 4 = -4
	No key being pressed:
	0 - 0 * 4 = -1 * 4 = -4
	No Keys are being pressed:
	1 - 1 * 4 = 0 * 4 = 0
*/

// Move character by hsp
x = x + hsp;