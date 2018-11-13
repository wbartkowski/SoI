void setup() 
{
  size(500, 500);
  strokeWeight(30);
}

void draw()
{
  background(255); 
  if (mouseX < 250) //jezeli kursor bedzie po lewej
    stroke(180, 168, 71);
  if (mouseX > 250) //jezeli kursor bedzie po prawej
    stroke(180, 0, 71);
  point(250, 250);
}
