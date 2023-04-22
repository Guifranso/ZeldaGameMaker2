/// @description Insert description here
// You can write your code in this editor
x += horizontalSpeed
y += verticalSpeed

if x < 0 {
	horizontalSpeed =- horizontalSpeed
} 

if x > room_width {
	horizontalSpeed =- horizontalSpeed
}

if y < 0 {
	verticalSpeed =- verticalSpeed
} 

if y > room_height {
	verticalSpeed =- verticalSpeed
}