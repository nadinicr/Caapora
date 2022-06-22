/// @description Insert description here
// You can write your code in this editor

if (room_id == 3)
{	
	game_over = total_points - (animalsControl + huntersControl);
	
	if (game_over < 10)
	{
		obj_game_over_bg.x = 0;
		obj_game_over_bg.y = 0;
		obj_game_over_bg.sprite_index = spr_lose;
	}
	
	else if (game_over >= 10 && game_over < 20)
	{
		obj_game_over_bg.x = 0;
		obj_game_over_bg.y = 0;
		obj_game_over_bg.sprite_index = spr_almost;
	}
	
	else if (game_over >= 20)
	{
		obj_game_over_bg.x = 0;
		obj_game_over_bg.y = 0;
		obj_game_over_bg.sprite_index = spr_victory;
	}
}
