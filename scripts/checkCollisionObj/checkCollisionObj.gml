// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkCollisionObj(vx, vy, obj) {
	
	collision = false
	
	repeat max(abs(vx), abs(vy)) {
		if place_meeting(x + sign(vx), y + sign(vy), obj) {
			collision = true
			break
		}	
	
	
		if !collision {
			x += sign(vx)
			y += sign(vy)
		} else break
	}
	return collision
}