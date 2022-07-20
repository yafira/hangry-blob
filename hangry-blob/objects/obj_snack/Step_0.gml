x += snack_spd

if x > room_height +100{		
	snack_reset = true
}


if snack_reset{
	x = 500
	y = random_range(0,room_width)
	snack_spd = random_range(1, 5)
	
	snack_reset = false	
}