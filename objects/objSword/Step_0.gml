/// @description Insert description here
// You can write your code in this editor

if timer <= 9 {
	if timer > 7 {
		direction = (image_angle + 270) mod 360 
		speed = 3.5
	}
	
	timer += 1
	
}
else instance_destroy()