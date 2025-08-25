ysp += 0.1
xsp = 0

if keyboard_check(vk_left)
{
	xsp = -1
}

if keyboard_check(vk_right)
{
	xsp = +1
}

if place_meeting(x, y+1, oGround)
{
	
	ysp = 0
		
	if (keyboard_check(vk_up))
	{
		hasReleased = false
		ysp = -2
	}
		
	hasDouble = true
}

if keyboard_check_released(vk_up)
{
	hasReleased = true
}

//double jump
if (hasDouble == true && hasReleased == true)
{
	if (keyboard_check(vk_up))
	{
			ysp = -2
			hasDouble = false;
	}
	
}

move_and_collide(xsp, ysp, oGround)

if place_meeting(x, y, oSpike)
{
	room_restart()
}
