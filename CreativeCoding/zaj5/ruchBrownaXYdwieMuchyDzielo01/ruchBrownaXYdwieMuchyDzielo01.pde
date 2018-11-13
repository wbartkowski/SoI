void setup()
{
  size(500, 500);
  background(255);
  strokeWeight(25);
}

float x1 = 250;
float y1 = 250;
float x2 = 250;
float y2 = 250;
void draw()
{
  background(255);
  point(x1, y1);
  point(x2, y2);
  x1 = x1 + random(-5, 5);
  y1 = y1 + random(-5, 5);
  x2 = x2 + random(-5, 5);
  y2 = y2 + random(-5, 5);
}
