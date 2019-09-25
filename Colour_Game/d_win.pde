void win() {
  //Background
  background(violet);
  fill(white);
  text("NEW HIGH SCORE!", width/2, height/3);
  text("You got " + highScore + " points", width/2, height*2/3);

} //-----------------------------------------------------------------------------------------------------------------------------------

void winMousedPressed() {
  //Variable Resets
  score = 0;
  highScoreColor = grey;
  timerLength = width*31/31;
  timerHue = 120;
  delay = 40;
  n = 0;
  
  mode = INTRO;
} //-------------------------------------------------------------------------------------------------------------------------------------
