void setup()
{
  size(500, 500);
  background(255);
  strokeWeight(25);
  frameRate(60);
  colorMode(HSB);
  stroke(random(100, 130), 200, 255, 20);
}

float x1 = 250;
float y1 = 250;
float x2 = 250;
float y2 = 250;
void draw()
{
  if(random(1000) < 10)
    stroke(random(100, 130), 200, 255, 20);
    
  point(x1, y1);
  point(x2, y2);
  
  x1 = x1 + random(-5, 5);
  y1 = y1 + random(-5, 5);
  x2 = x2 + random(-5, 5);
  y2 = y2 + random(-5, 5);
  
  if(x1<50) x1 = 50;
  if(x2<50) x2 = 50;
  if(x1>450) x1 = 450;
  if(x2>450) x2 = 450;

  if(y1<50) y1 = 50;
  if(y2<50) y2 = 50;
  if(y1>450) y1 = 450;
  if(y2>450) y2 = 450;

}
