//Scores
int score = 0;
int highScore = 0;
color highScoreColor = grey;
//Word
int currentColor;
int currentWord;
//Timer
float timerLength;
color timerColor;
float timerHue = 120;
//Other
int gameBalance;
final int BARWIDTH = 775;

//---------------------------------------------------------------------------------------------------------------------------------------
void game() {
  //Background
  noStroke();
  
  //Top
  fill(white);
  rect(width/2, height/4, width, height/2);
  fill(black);
  text("True", width/2, height/4);
  
  //Bottom
  rect(width/2, height*3/4, width, height/2);
  fill(white);
  text("False", width/2, height*3/4);
  
  //Score
  fill(grey);
  text(score, width/8, height*7/8);
  
  //High Score
  if (highScore < score) {
    highScore = score;
    highScoreColor = lime;
  }
  fill(highScoreColor);
  text(highScore, width*7/8, height*7/8);
  
  //Timer Color
  timerColor = color(timerHue, 191.25, 191.25);
  timerHue-= .75;
  
  //Timer inside
  rectMode(LEFT);
  fill(timerColor);
  noStroke();
  rect(width/32, height/32, timerLength, height/12, 16);
  timerLength-= 4.3056;
  
  //Timer container
  stroke(black);
  strokeWeight(4);
  noFill();
  rect(width/32, height/32, BARWIDTH, height/12, 16);
  rectMode(CENTER);
  
  //Running out of timer
  if (timerLength <= width/16) mode = LOSE;

  //Choosing a color
  fill(colors[currentColor]);

  //Choosing a word
  text(words[currentWord], width/2, height/2);
} //-------------------------------------------------------------------------------------------------------------------------------------

void gameMousedPressed() {
  //True
  if (mouseY <= height/2) {
    if (currentColor == currentWord) {
      score++;
      timerLength = BARWIDTH;
      timerHue = 120;
    } else {
      if (highScoreColor == lime) mode = WIN;
      else mode = LOSE;
    }
  }
  //False
  if (height/2 < mouseY) {
    if (currentColor != currentWord) {
      score++;
      timerLength = BARWIDTH;
      timerHue = 120;
    } else {

      if (highScoreColor == lime) mode = WIN;
      else mode = LOSE;
    }
  }

  //Chooses whether true or false
  gameBalance = int(random(0, 2));
  //True
  if (gameBalance == 0) {
    currentColor = int(random(0, 6));
    currentWord = currentColor;
  }
  //False
  if (gameBalance == 1) {
    currentColor = int(random(0, 6));
    currentWord = int(random(0, 6));
    if (currentWord == currentColor) currentWord = int(random(0, 6));
  }
} //-------------------------------------------------------------------------------------------------------------------------------------
