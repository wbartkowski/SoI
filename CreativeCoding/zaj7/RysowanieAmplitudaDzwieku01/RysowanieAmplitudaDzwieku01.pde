import processing.sound.*;

SoundFile nagranie;
Amplitude amp;

public void setup() {
  size(500, 500);

  nagranie = new SoundFile(this, "beat.aiff");
  nagranie.loop();

  amp = new Amplitude(this);
  amp.input(nagranie);
}      

public void draw() {
  background(125, 255, 125);
  noStroke();
  fill(255, 0, 150);

  float rozmiar = amp.analyze() * 450;

  ellipse(width/2, height/2, rozmiar, rozmiar);
}
