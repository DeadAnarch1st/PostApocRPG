/// @description 
id.y += fall_speed; //Change position of itself by the speed of fall speed

if (snow_dir == 0)
{
	id.x -= (1 + global.wind);
}
else if (snow_dir == 1)
{
	id.x += global.wind;	
}
else 
{
	id.x += (1 + global.wind);		
}