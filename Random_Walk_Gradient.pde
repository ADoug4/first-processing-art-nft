float xLocation;
float yLocation;
float Rstroke;
float Gstroke;
float Bstroke;

void setup(){
  size(700, 700);
  background(255, 255, 255);
  xLocation = random(700);
  yLocation = random(700);
  Rstroke = random(255);
  Gstroke = random(255);
  Bstroke = random(255);
}


void draw(){
  float newXLocation = xLocation + random(100)-50;
  float newYLocation = yLocation + random(100)-50;
  stroke(Rstroke, Gstroke, Bstroke);
  
  if (Rstroke > 253){
    Rstroke = 0;
  }
  if (Gstroke > 253){
    Gstroke = 0;
  }
  if (Bstroke > 253){
    Bstroke = 0;
  }

  Rstroke = Rstroke + 1;
  Gstroke = Gstroke + 1;
  Bstroke = Bstroke + 1;
    
  if (newXLocation < 0){
    newXLocation = 0;
  }
  if (newXLocation > 700){
    newXLocation = 700;
  }
  if (newYLocation < 0){
    newYLocation = 0;
  }
  if (newYLocation > 700){
    newYLocation = 700;
  }
  
    
  
  line(xLocation, yLocation, newXLocation, newYLocation);
  xLocation = newXLocation;
  yLocation = newYLocation;
}

void mousePressed(){
  saveFrame("frame_####.jpg");
}
