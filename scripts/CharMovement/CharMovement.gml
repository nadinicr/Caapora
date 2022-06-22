// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//---------------- CHARACTER MOVEMENT ----------------

function CharMovement(Character, Walk_Speed, Collision_Speed){

	if (keyboard_check(vk_right) && place_free(Character.x + Collision_Speed,Character.y))
	{
		if (hide_dialogue_bar == true){
		Character.x += Walk_Speed; //MOVE RIGHT
		Character.sprite_index = spr_caipora_right;
		}
	}

	if (keyboard_check(vk_left) && place_free(Character.x - Collision_Speed, Character.y))
	{
		if (hide_dialogue_bar == true){
		Character.x-= Walk_Speed; //MOVE LEFT
		Character.sprite_index = spr_caipora_left;
		}
	}

	if (keyboard_check(vk_up) && place_free(Character.x, Character.y - Collision_Speed))
	{
		if (hide_dialogue_bar == true){
		Character.y -= Walk_Speed; //MOVE UP
		Character.sprite_index = spr_caipora_up;
		}
	}

	if (keyboard_check(vk_down) && place_free(Character.x, Character.y + Collision_Speed))
	{
		if (hide_dialogue_bar == true){
		Character.y += Walk_Speed; //MOVE DOWN
		Character.sprite_index = spr_caipora_down;
		}
	}

	if (keyboard_check_released(vk_down) || keyboard_check_released(vk_up) || keyboard_check_released(vk_left) || keyboard_check_released(vk_right) )
	{
		Character.sprite_index = spr_caipora_idle;
	}
}