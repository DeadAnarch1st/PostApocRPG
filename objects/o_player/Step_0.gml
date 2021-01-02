/// @description 
//Input
var hor, ver;
//hor = (keyboard_check(ord("D")) || keyboard_check(vk_right))-(keyboard_check(ord("A")) || keyboard_check(vk_left));
//ver = (keyboard_check(ord("S")) || keyboard_check(vk_down))-(keyboard_check(ord("W")) || keyboard_check(vk_up));

hor = (keyboard_check(ord("D"))) - (keyboard_check(ord("A")));
ver = (keyboard_check(ord("S"))) - (keyboard_check(ord("W")));

hsp = hor*moveSpeed;
vsp = ver*moveSpeed;

//Jump
if (keyboard_check_pressed(vk_space)){
	zsp = -jumpSpeed;
}

//Gravity
if (zsp<10){
	zsp += gravSpeed;
}

//Collisions
if (place_meeting_3d(x+hsp, y, z, o_box)){
    hsp = 0;
}

if (place_meeting_3d(x, y+vsp, z, o_box)){
    vsp = 0;
}

//Z Collisions
if (place_meeting_3d(x, y, z+zsp, o_box)){
    zsp = 0;
}

//Z Floor
if (z+zsp > floorZ){
	zsp = 0;
	z = floorZ;
}

x += hsp
y += vsp;
z += zsp;