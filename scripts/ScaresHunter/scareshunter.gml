// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function ScaresHunter(Character_1, Hunter_1, Dialogue_1, Audio_1, Camera_1){
	
	//GETS THE NEAREST INSTANCE FROM HUNTER
	var Hunter_x = instance_nearest(Character_1.x, Character_1.y, Hunter_1).x;
	var Hunter_y = instance_nearest(Character_1.x, Character_1.y, Hunter_1).y;
	
	//SCARES THE HUNTER
	if (point_distance(Character_1.x, Character_1.y, Hunter_x, Hunter_y) < 200)
	{
		//SCARES IF NOT SCARED YET
		if (keyboard_check_released(ord("Z")) && Hunter_1.sprite_index == spr_hunter_idle)
		{
			Hunter_1.sprite_index = spr_hunter_scared; //CHANGE SPRITE TO SCARED
			total_points += 1; //INCREASE PLAYER TOTAL POINTS
			huntersControl -= 1; //DECREASE TOTAL HUNTERS
			audio_play_sound(Audio_1, 10, false); //PLAY AUDIO THAT SCARES HUNTERS
		}
	
		//TALKS TO THE HUNTER WHEN ALREADY SCARED
		if (keyboard_check_released(ord("Z")) && Hunter_1.sprite_index == spr_hunter_scared)
		{	
			//MAKES THE PLAYER STOP MOVING
			hide_dialogue_bar = false; 
			
			//GETS A RANDOM NUMBER TO A RANDOM DIALOGUE 
			var rand = round(random_range(0,Dialogue_1.image_number));
			Dialogue_1.image_index = rand;
			
			//MAKES THE TEXTBOX APPEARS IN THE HUNTER XY
			show_debug_message(Camera_1.x);
			show_debug_message(Camera_1.y);
			
			if (Camera_1.x > 640 && Camera_1.x < 3453)
			{
				Dialogue_1.x = Camera_1.x;
				Dialogue_1.y = Camera_1.y + 150;
			}
			
		}
		
		//CLOSE TEXTBOX DIALOGUE
		if (keyboard_check_released(ord("X")) && Hunter_1.sprite_index == spr_hunter_scared && hide_dialogue_bar == false)
		{
			//MAKES THE PLAYER MOVE AGAIN
			hide_dialogue_bar = true;
			
			//MAKES TEXTBOX DIALOGUE DESAPPEARS FROM VIEWPORT
			Dialogue_1.x = -1000;
			Dialogue_1.y = -1000;
		}
	}
}