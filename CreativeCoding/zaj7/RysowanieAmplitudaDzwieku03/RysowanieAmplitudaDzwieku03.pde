import processing.sound.*;

SoundFile nagranie;
Amplitude amp;

public void setup() {
  size(500, 500, P2D);

  nagranie = new SoundFile(this, "beat.aiff");
  nagranie.loop();

  amp = new Amplitude(this);
  amp.input(nagranie);
}      

public void draw() {
  fill(125, 255, 125, 10);
  noStroke();
  rect(0, 0, 500, 500);

  float rozmiar = amp.analyze() * 450;

  fill(255, 0, 150);
  ellipse(random(100, 400), random(100, 400), rozmiar, rozmiar);
}
