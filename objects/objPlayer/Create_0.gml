/// @description Insert description here
// You can write your code in this editor
scale = 3
window_set_size(window_get_width() * scale, window_get_height() * scale)

show_debug_message(depth);

vx = 0
vy = 0
playerSpeed = 2

attackSprite = link_attack_side
walkSprite = link_walk_side

timer = 0
state = "IDLE"