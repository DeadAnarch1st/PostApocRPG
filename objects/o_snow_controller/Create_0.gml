/// @description Create snowflakes all over the screen
z = 0;
max_amount = 700;
//Speed of wind
global.wind = 1 //Can be neg or pos
alarm[0] = 600; // Randomly change wind strength

for (i = 0; i < max_amount; i++) 
{
	instance_create_depth(irandom(room_width), irandom(room_height), 1, o_snowflake);	
}