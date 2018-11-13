PImage obraz, premier;

void setup()
{
  size(500, 500);
  obraz = loadImage("kotek.jpg");
  premier = loadImage("premierek.jpg");
}

void draw()
{
  translate(random(500), random(500));
  rotate(PI*0.005*mouseX);
  float skala = random(0.05, 0.3);
  if (random(100) < 20)
    image(obraz, 0, 0, obraz.width*skala, obraz.height*skala);
  else
    image(premier, 0, 0, premier.width*skala, premier.height*skala);
}
