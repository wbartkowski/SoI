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

void draw() {
  fill(125, 255, 125, 10);
  noStroke();
  rect(250, 250, 500, 500);

  float rozmiar = amp.analyze() * 350;

  fill(255, 0, 150, 150);
  if (rozmiar < 150)
    ellipse(random(100, 400), random(100, 400), rozmiar, rozmiar);
  else
    rect(random(100, 400), random(100, 400), rozmiar, rozmiar);
}
