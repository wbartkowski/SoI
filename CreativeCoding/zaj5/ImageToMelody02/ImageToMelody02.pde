import processing.sound.*;

PImage superCoool;
SinOsc fala1;
SinOsc fala2;

void setup() {
  size(500, 500);
  background(255);

  superCoool = loadImage("kolorowy.jpg"); 

  fala1 = new SinOsc(this);
  fala2 = new SinOsc(this);
  fala1.play();
  fala2.play();
  strokeWeight(15);
  frameRate(4);
}
int x1 = 0;
int x2 = 0;
void draw() {
  image(superCoool, 0, 0);
  color kolor1 = superCoool.get(x1, 150);
  color kolor2 = superCoool.get(x2, 350);
  stroke(kolor1, 150);
  ellipse(x1, 150, 30, 30); 
  stroke(kolor2, 150);
  ellipse(x2, 350, 30, 30); 
  float barwa1 = hue(kolor1);
  float barwa2 = hue(kolor2);
  float czest1 = map(barwa1, 0, 255, 200, 300);
  float czest2 = map(barwa2, 0, 255, 300, 500);
  fala1.freq(czest1);
  fala2.freq(czest2);
  x1 = x1 + 5;
  x2 = x2 + 6;
}
