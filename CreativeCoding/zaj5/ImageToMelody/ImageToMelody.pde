import processing.sound.*;

PImage superCoool;
SinOsc falaSin;

void setup() {
  size(500, 500);
  background(255);

  superCoool = loadImage("kolorowy.jpg"); 
  image(superCoool, 0, 0);

  falaSin = new SinOsc(this);
  falaSin.play();
}

void draw() {
  color kolor = superCoool.get(mouseX, mouseY);
  float barwa = hue(kolor);
  float czest = map(barwa, 0, 255, 333, 666);
  falaSin.freq(czest);
}
