color c;
int switchingColor = 0;
int delay = 60;

//---------------------------------------------------------------------------------------------------------------------------------------
void intro() {
  if      (switchingColor == 0) c = red;
  else if (switchingColor == 1) c = orange;
  else if (switchingColor == 2) c = yellow;
  else if (switchingColor == 3) c = green;
  else if (switchingColor == 4) c = blue;
  else if (switchingColor == 5) c = purple;
  else c = grey;
  delay--;
  if (delay < 0) {
    delay = 60;
    if (switchingColor < 5) switchingColor++;
    else switchingColor = 0;
  }

  background(c);
  fill(white);
  text("COLOUR GAME", width/2, height/2);
} //-------------------------------------------------------------------------------------------------------------------------------------
