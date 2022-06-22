// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//--------------------- HEALING ANIMALS ---------------------

function IntroCaipora(Character, Dialogue){
	
	//get nearest instance
	var dial_x = instance_nearest(Character.x, Character.y, Dialogue).x;
	var dial_y = instance_nearest(Character.x, Character.y, Dialogue).y;
	
	
	//heals the animal
	if (point_distance(Character.x, Character.y, dial_x, dial_y) < 200)
	{
		hide_dialogue_bar = false;
		//close textbox bar
		if (keyboard_check_released(ord("X")) && hide_dialogue_bar == false)
		{
			hide_dialogue_bar = true; //makes textbox bar desappears 
			Dialogue.x = -1000; //hide
			Dialogue.y = -1000; //hide
		}
		
	}
}