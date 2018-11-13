import processing.sound.*;

SoundFile nagranie;
Amplitude amp;

void setup() {
  size(500, 500, P2D);

  nagranie = new SoundFile(this, "alto.mp3");
  nagranie.loop();

  amp = new Amplitude(this);
  amp.input(nagranie);

  rectMode(CENTER);
}      

float x = 250;
float y = 250;

void draw() {
  fill(125, 255, 125, 10);
  noStroke();
  rect(250, 250, 500, 500);

  float g = amp.analyze() * 50;
  fill(255, 0, 150, 150);
  ellipse(x, y, g, g);
  x = x + random(-g, g);
  y = y + random(-g, g);
  //ograniczam ruch zey nie wychodzil z ekranu
  x = constrain(x,50,450);
  y = constrain(y,50,450);
}
