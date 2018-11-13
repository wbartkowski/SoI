import processing.sound.*;

SinOsc falaSin;

void setup() {
  size(500, 500);
  background(255);

  //tworzymy nowy obiekt klasy SinOsc
  //od tej pory mozna go uztwac
  falaSin = new SinOsc(this);
  falaSin.play();
}

void draw() {
   //ustalamy czestotliwosc w Hz
  falaSin.freq(200+mouseX);
  falaSin.pan(random(0,1));
}
