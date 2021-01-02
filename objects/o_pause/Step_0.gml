/// @description Switch Rooms
var pause_key = keyboard_check_pressed(vk_escape);

if (pause_key) {
	room_goto(pause_room);
}