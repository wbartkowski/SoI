void setup() 
{
  size( 500, 500);
  background(0);
  stroke(255, 200);
  strokeWeight(10);
  frameRate(60);
}
 
void draw() 
{
  fill(0, 10);
  rect(0, 0, 500, 500);
  float duu;
  duu = 0; //wkladamy do srodka duu liczbe 0
  float los1, los2;
  while (duu < 20) 
  { 
    los1 = random(mouseX, 450);
    los2 = random(mouseY, 450);
    point(los1, los2);
    duu++; //duu = duu + 1;
  }
}
