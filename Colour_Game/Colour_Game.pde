//Mark Ewert
//Sept 13

//Basic Colours
color red             = #df2020;
color orange          = #df8020;
color yellow          = #dfdf20;
color lime            = #80df20;
color green           = #50df20;
color mint            = #20df50;
color cyan            = #20dfdf;
color blue            = #2080df;
color navy            = #2020df;
color purple          = #8020df;
color violet          = #df20df;
color pink            = #df2080;
color black           = 0;
color grey            = 127;
color white           = 255;

//Mode Framework
int mode;
final int INTRO = 0;
final int GAME  = 1;
final int LOSE  = 2;
final int WIN   = 3;

//Arrays
String[] words = {"red", "orange", "yellow", "green", "blue", "purple"};
color[] colors = {red, orange, yellow, green, blue, purple};

//---------------------------------------------------------------------------------------------------------------------------------------
void setup() {
  //Basic
  size(800, 600);

  //Initializing Variables
  mode = INTRO;
  timerLength = width*31/32;

  //Text
  textAlign(CENTER, CENTER);
  textSize(96);

  //Colour
  colorMode(HSB);

  //Shapes
  rectMode(CENTER);
} //-------------------------------------------------------------------------------------------------------------------------------------

void draw() {
  //Mode Framework
  if      (mode == INTRO) intro();
  else if (mode == GAME)  game();
  else if (mode == LOSE)  lose();
  else if (mode == WIN)   win();
  else println("Error! Mode was " + mode);
} //-------------------------------------------------------------------------------------------------------------------------------------

void mousePressed() {
  if      (mode == INTRO) mode = GAME;
  else if (mode == GAME)  gameMousedPressed();
  else if (mode == LOSE)  mode = INTRO;
  else if (mode == WIN)   mode = INTRO;
} //-------------------------------------------------------------------------------------------------------------------------------------
