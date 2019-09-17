int score = 0;
int gameBalance;
int currentColor;
int currentWord;

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
  text(score, width*7/8, height*7/8);

  //Choosing a color
  fill(colors[currentColor]);

  //Choosing a word
  text(words[currentWord], width/2, height/2);
} //-------------------------------------------------------------------------------------------------------------------------------------

void gameMousedPressed() {
  //True/false
  if (mouseY < height/2) {
    if (currentColor == currentWord) score++;
    else mode = LOSE;
  }
  if (height/2 < mouseY) {
    if (currentColor != currentWord) score++;
    else mode = LOSE;
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
