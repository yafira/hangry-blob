if !ate_snack {
	if(keyboard_check(vk_right)){
		x += 5
	}
	if(keyboard_check(vk_left)) {
		x-= 5
	}
	if(keyboard_check(vk_up)) {
		y -= 5
	}
	if(keyboard_check(vk_down)) {
		y += 5
	}

	if x > room_width{
		x = 0	
	}
	if x < 0 {
		x = room_width	
	}
	if y > room_height{
		y = 0	
	}
	if y < 0 {
		y = room_height	
	}


 
	if collision_circle(x,y,20,obj_snack,false,false){
		var nearest_snack = instance_nearest(x,y,obj_snack)
		nearest_snack.snack_reset = true

		ENERGY_LEVEL += 2	
		sprite_index = spr_blob
		ate_snack = true
		ate_snack_timer = ate_snack_timer_max

		// x = start_x
		// y = start_y
	
	}
	
	if collision_circle(x,y,20,obj_not_snack,false,false){
		var nearest_snack = instance_nearest(x,y,obj_not_snack)
		nearest_snack.snack_reset = true

		ENERGY_LEVEL -= 5
		did_not_eat_snack = true
		sprite_index = spr_blob2
		ate_snack_timer = 20
	}
	
}

if ate_snack{
	ate_snack_timer -= 1
	if ate_snack_timer < 0 {
		ate_snack = false	
	} else {
		did_not_eat_snack = true
	}
	
	
if ENERGY_LEVEL >= 20 {
		sprite_index = spr_blob3	
	}
	

}