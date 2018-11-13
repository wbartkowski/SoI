import processing.sound.*;

SinOsc fala1;
SinOsc fala2;

void setup() {
  size(500, 500);
  background(255);

  //tworze dwa obiekt
  fala1 = new SinOsc(this);
  fala2 = new SinOsc(this);
  //sprawiam zeby fale byly slyszalne  
  fala1.play();
  fala2.play();
}

void draw() {
  //ustalamy czestotliwosc w Hz za pomoca mapowania
  float czest1 = map(mouseX, 0, 500, 340, 440);  
  fala1.freq(czest1);
  float czest2 = map(mouseY, 0, 500, 340, 440);  
  fala2.freq(czest2);
  fala1.pan(0.1); //ta gra bardziej w lemym glosniku
  fala2.pan(0.9); //ta gra bardiej w prawym
  background(255);
  strokeWeight(czest1);
  point(150, 250);
  strokeWeight(czest2);
  point(150+200, 250);
}
