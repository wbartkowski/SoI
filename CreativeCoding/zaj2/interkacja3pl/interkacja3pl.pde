void setup() 
{
  size( 500, 500);
  background(0);
  stroke(255, 200);
  strokeWeight(35);
  frameRate(60);
}

void draw() 
{
  fill(255, 10);
  stroke(0);
  rect(0, 0, 500, 500);
  float los1, los2;
  float C, Z, N;
  C = random(0, 255);
  Z = random(0, 255);
  N = random(0, 255);
  stroke(C, Z, N, 80);
  los1 = random(mouseX, 450);
  los2 = random(mouseY, 450);
  point(los1, los2);
}
