// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkInputs(){
	if keyboard_check(vk_up) state = "UP"
    else if keyboard_check(vk_down) state = "DOWN"
    else if keyboard_check(vk_left) state = "LEFT"
    else if keyboard_check(vk_right) state = "RIGHT"
    else state = "IDLE"
	if keyboard_check(ord("X")) state = "ATTACK_SWORD_START"
}