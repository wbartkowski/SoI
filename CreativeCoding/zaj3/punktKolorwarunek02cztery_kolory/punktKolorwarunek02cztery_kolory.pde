void setup() 
{
  size(500, 500);
  strokeWeight(30);
}

void draw()
{
  background(255); 
  if (mouseX < 250) 
  {
    if (mouseY < 250)
      stroke(180, 168, 71);
    if (mouseY > 250) 
      stroke(180, 89, 181);
  }
  if (mouseX > 250) 
  {
    if (mouseY < 250)
      stroke(180, 0, 71);
    if (mouseY > 250)    
      stroke(0, 168, 71);
  }
  point(250, 250);
}
