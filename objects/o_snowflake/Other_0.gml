/// @description 

if (id.x > room_width)
{
	id.x = 0;	
}
if (id.x < 0)
{
		id.x = room_width
}
if(id.y > room_height)
{	
	id.y = 0; //Bring snowflakes back to the top of the screen
	id.x = irandom(room_width); //Respawn randomly along x axis	
}