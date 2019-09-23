void lose() {
  //Background
  background(navy);
  fill(white);
  text("Too bad...", width/2, height/2);
  
  //Variable Resets
  score = 0;
  highScoreColor = grey;
  timerLength = width*31/31;
  timerHue = 120;
  delay = 40;
} //---------------------------------------------------
