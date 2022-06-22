/// @description Insert description here
// You can write your code in this editor

//RANDOMIZE GAME SEED
random_set_seed(1);

//GETS THE ANIMAL AND HUNTERS NUMBER CONTROL 
globalvar animalsControl, huntersControl;
animalsControl = 10;
huntersControl = 6;

//GETS THE ROOM ID TO TRANSITIONS
globalvar room_id; //room id
room_id = 1; 

//GETS THE TOTAL SCORE TO PLAYER WINS, ALMOST WINS OR LOSE
globalvar game_over, total_points; // victory condition
total_points = 0;
game_over = 0;

// - (animalsControl + huntersControl)

globalvar scream;
scream = false;