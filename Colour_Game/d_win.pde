void win() {
  //Background
  background(violet);
  fill(white);
  text("New High Score!", width/2, height/3);
  text("You got " + highScore + " points", width/2, height*2/3);

  //Variable Resets
  score = 0;
  highScoreColor = grey;
  timerLength = width*31/31;
  timerHue = 120;
  delay = 40;
} //---------------------------------------------------
