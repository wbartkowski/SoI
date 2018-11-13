void setup()
{
  size(500, 500);
  background(0);
  textSize(90);
  fill(255, 50);
  frameRate(30);
}
float y = 100;
float a = 0.3;
void draw()
{
  fill(0,5);
  rect(0,0,500,500);
  fill(255, 50);
  text("Do domu!",random(20, 40), y);
  y = y + a;
  a = a + 0.1;
  if(y > 650) y = 0;
}
