
if room == rm_start{
	if keyboard_check_pressed(vk_space){
		room_goto(rm_game)
	}

}


if room == rm_game{
	if ENERGY_LEVEL <= -1 or ENERGY_LEVEL >= 20{
		room_goto(rm_end)	
	}
	
}


if room == rm_end{
	if keyboard_check_pressed(vk_space){
		room_goto(rm_start)
		ENERGY_LEVEL = 0
	}

}




