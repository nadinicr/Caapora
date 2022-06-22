// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//--------------------- HEALING ANIMALS ---------------------

function HealCapybara(Character_1, Animal_1, Dialogue_1, Audio_1){
	
	//get nearest instance
	var animal_x = instance_nearest(Character_1.x, Character_1.y, Animal_1).x;
	var animal_y = instance_nearest(Character_1.x, Character_1.y, Animal_1).y;
	
	//heals the animal
	if (point_distance(Character_1.x, Character_1.y, animal_x, animal_y) < 200)
	{
		if (keyboard_check_released(ord("Z")) && Animal_1.sprite_index == spr_dead_capybara)
		{
			Animal_1.sprite_index = spr_alive_capybara; //change sprite
			total_points += 1;
			animalsControl -= 1;
			audio_play_sound(Audio_1, 10, false); //sound
		}
	
		//talks to the animal
		if (keyboard_check_released(ord("Z")) && Animal_1.sprite_index == spr_alive_capybara) //the animal needs to be alive
		{	
			hide_dialogue_bar = false; //makes textbox bar appears in the room
			
			var rand = round(random_range(0,Dialogue_1.image_number)); //randomize number
			Dialogue_1.image_index = rand; //randomize text
			
			Dialogue_1.x = Character_1.x; //show
			Dialogue_1.y = Character_1.y; //show
		}
		//close textbox bar
		if (keyboard_check_released(ord("X")) && Animal_1.sprite_index == spr_alive_capybara && hide_dialogue_bar == false)
		{
			hide_dialogue_bar = true; //makes textbox bar desappears 
			Dialogue_1.x = -1000; //hide
			Dialogue_1.y = -1000; //hide
		}
	}
}