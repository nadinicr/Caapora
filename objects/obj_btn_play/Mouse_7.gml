/// @description Insert description here
// You can write your code in this editor

audio_pause_sound(snd_main_menu);
audio_play_sound(snd_click, 1, false);
audio_play_sound(snd_game_ambient, 1, true);
room_goto(rm_level_1);
