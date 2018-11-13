void setup()
{
  size(500, 500);
  background(255);
  strokeWeight(25);
}

float x = 250;
float y = 250;
void draw()
{
  background(255);
  point(x, y);
  x = x + random(-5, 5);
  y = y + random(-5, 5);
}
