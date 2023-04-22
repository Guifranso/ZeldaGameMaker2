/// @description Insert description here
// You can write your code in this editor
cima = keyboard_check(vk_up)
baixo = keyboard_check(vk_down)
esquerda = keyboard_check(vk_left)
direita = keyboard_check(vk_right)

if verticalSpeed == 0 horizontalSpeed = (direita - esquerda) * 2
if horizontalSpeed == 0 verticalSpeed = (baixo - cima) * 2

if horizontalSpeed > 0 {
	image_speed = animationSpeed
	sprite_index = link_walk_side
	image_xscale = -1
}
if horizontalSpeed < 0 {
	image_speed = animationSpeed
	sprite_index = link_walk_side
	image_xscale = 1
}
if verticalSpeed < 0 {
	image_speed = animationSpeed
	sprite_index = link_walk_up
	image_xscale = 1
}
if verticalSpeed > 0 {
	image_speed = animationSpeed
	sprite_index = link_walk_down
	image_xscale = 1
}
if horizontalSpeed == 0 and verticalSpeed == 0 {
	image_speed = 0
}
if keyboard_check(ord("X")) {
	attacking = true
	io_clear()
}

if attacking {
	
	show_debug_message("atactou")
	sprite_index = link_attack_side
	timer = 15
	while timer >= 0 {
		timer--
		show_debug_message(timer)
	}
	sprite_index = link_walk_side
	attacking = false
}

if points = 3 room_goto_next()

if place_meeting(x + horizontalSpeed, y, oWall) {
	while !place_meeting(x + sign(horizontalSpeed), y, oWall) x += sign(horizontalSpeed)
	horizontalSpeed = 0
} else x += horizontalSpeed

if place_meeting(x, y + verticalSpeed, oWall) {
	while !place_meeting(x, y + sign(verticalSpeed), oWall) y += sign(verticalSpeed)
	verticalSpeed = 0
} else y += verticalSpeed
