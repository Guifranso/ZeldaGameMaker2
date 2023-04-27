/// @description Insert description here
// You can write your code in this editor

switch state {
	case "MOVING": {
		switch facing {
			case enumFacing.up: {
				vx = 0
				vy = -moveSpeed
				break
			}
			case enumFacing.right: {
				vx = +moveSpeed
				vy = 0
				break
			}
			case enumFacing.down: {
				vx = 0
				vy = +moveSpeed
				break
			}
			case enumFacing.left: {
				vx = -moveSpeed
				vy = 0
				break
			}
		}
		
		if random_range(0, 100) < 1 facing = choose(enumFacing.up, enumFacing.right, enumFacing.down, enumFacing.left)
		if random_range(0,300) < 1 {
			state = "SHOOTING"
			timer = 0
		}
		image_angle = facing - 90
		break
	}
	case "SHOOTING": {
		vx = 0
		vy = 0
		
		if timer < 90 {
			if timer == 60 {
				with(instance_create_layer(x, y, "Instances", objOctorokProject)) {
					direction = other.facing
					speed = 4
				}
			}
			timer++
		} else {
			state = "MOVING"
		}
		break
	}
}

// Faz com que ele mova alternadamente, sendo um tique maior que zero e o outro
// menor, fazendo ele se mover mais lentamente

// Revisar esse trecho depois para melhor entendimento
cx += vx
cy += vy
vxNew =	round(cx)
vyNew = round(cy)
cx = vx - vxNew
cy = vy - vyNew

if(checkCollisionObj(vxNew,vyNew,objSolid)) {
	facing = choose(enumFacing.up, enumFacing.right, enumFacing.down, enumFacing.left)
}