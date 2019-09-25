color myColor;
int switchingColor = 0;
int delay = 40;

ArrayList<PImage> gif;
int n = 0;
String zero;

//---------------------------------------------------------------------------------------------------------------------------------------
void intro() {
  if      (switchingColor == 0) myColor = red;
  else if (switchingColor == 1) myColor = orange;
  else if (switchingColor == 2) myColor = yellow;
  else if (switchingColor == 3) myColor = green;
  else if (switchingColor == 4) myColor = blue;
  else if (switchingColor == 5) myColor = purple;
  else myColor = grey;
  delay--;
  if (delay < 0) {
    delay = 90;
    if (switchingColor < 5) switchingColor++;
    else switchingColor = 0;
  }

  tint(myColor);
  image(gif.get(n), width/2, height/2, width, height);
  if (frameCount % 2 == 0 ) {
    n++;
  }
  if (45 < n) {
    n = 0;
  }

  //Text
  fill(white);
  text("COLOUR GAME", width/2, height/2);
} //-------------------------------------------------------------------------------------------------------------------------------------
