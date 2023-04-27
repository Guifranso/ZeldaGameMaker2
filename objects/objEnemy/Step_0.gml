if iframe > 0 {
	if iframe mod 3 == 0 image_alpha = 0
	else image_alpha = 255
	iframe--	
}

if hp <= 0 instance_destroy()
