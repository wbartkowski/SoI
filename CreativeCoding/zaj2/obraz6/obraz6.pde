PImage obraz;

void setup()
{
  size(500, 500);
  obraz = loadImage("kotek.jpg");
  image(obraz, -200, -50);
}

void draw()
{
  translate(random(500), random(500));
  rotate(PI*0.005*mouseX);
  float skala = random(0.05, 0.3);
  image(obraz, 0, 0, random(150), random(150));
}
