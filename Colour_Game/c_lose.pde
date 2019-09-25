void lose() {
  //Background
  background(navy);
  fill(white);
  text("YOU LOSE", width/2, height/5);
  text("Next time, try", width/2, height*2/5);
  text("to get more", width/2, height*3/5);
  text("than " + highScore + " points", width/2, height*4/5);
} //---------------------------------------------------

void loseMousedPressed() {
  //Variable Resets
  score = 0;
  highScoreColor = grey;
  timerLength = width*31/31;
  timerHue = 120;
  delay = 40;
  n = 0;
  
  mode = INTRO;
} //-------------------------------------------------------------------------------------------------------------------------------------
