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
  //balans ma byc od 0 do 1 a mouseY jest od 0 do 500
  //wiec poleceniem map mapujemy te zakresy
  float balans = map(mouseY, 0, 500, 0, 1);
  falaSin.pan(balans);
}
