/// @description Insert description here
// You can write your code in this editor

animationSpeed = 0.2

switch(state) {
    case "ATTACK_SWORD_START": {
        image_speed = 0
        vx = 0
        vy = 0
        timer = 20
        sprite_index = attackSprite
        state = "ATTACK_SWORD"
        break
    }
    case "ATTACK_SWORD": {
		if timer == 16 {
			if attackSprite == link_attack_side and image_xscale == 1 {
				with(instance_create_layer(x-12, y, "Instances", objSword)) {
					image_angle = 90
				}
			}
			if attackSprite == link_attack_side and image_xscale == -1 {
				with(instance_create_layer(x+12, y, "Instances", objSword)) {
					image_angle = 270
				}
			}
			if attackSprite == link_attack_up {
				with(instance_create_layer(x, y-12, "Instances", objSword)) {
					image_angle = 0
				}
			}
			if attackSprite == link_attack_down {
				with(instance_create_layer(x, y+12, "Instances", objSword)) {
					image_angle = 180
				}
			}
		}
        if timer > 0 timer -= 1
        else state = "IDLE"
        break
    }
    case "IDLE": {
        image_speed = 0
		sprite_index = walkSprite
        vx = 0
        vy = 0
        checkInputs()
        break
    }
    case "UP": {
        image_speed = animationSpeed
        walkSprite = link_walk_up
		attackSprite = link_attack_up
		sprite_index = walkSprite
        image_xscale = 1
        vx = 0
        vy = -1 * moveSpeed
        
        checkInputs()
        break
    }
    case "DOWN": {
        image_speed = animationSpeed
		walkSprite = link_walk_down
		attackSprite = link_attack_down
		sprite_index = walkSprite
        image_xscale = 1
        vx = 0
        vy = moveSpeed
        
        checkInputs()
        break
    }
    case "LEFT": {
        image_speed = animationSpeed
        walkSprite = link_walk_side
		attackSprite = link_attack_side
		sprite_index = walkSprite
        image_xscale = 1
        vx = -1 * moveSpeed
        vy = 0
        checkInputs()
        break
    }
    case "RIGHT": {
        image_speed = animationSpeed
        walkSprite = link_walk_side
		attackSprite = link_attack_side
		sprite_index = walkSprite
        image_xscale = -1
        vx = moveSpeed
        vy = 0
        checkInputs()
        break
    }
}

checkCollisionObj(vx, vy, objSolid)