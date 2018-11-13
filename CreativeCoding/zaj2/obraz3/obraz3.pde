PImage obraz;

void setup()
{
  size(500, 500);
  obraz = loadImage("kotek.jpg");
}

void draw()
{
  image(obraz, -200, -50);
  translate(250, 250);
  rotate(PI*0.005*mouseX);
  image(obraz, 0, 0, 150, 100);
}
