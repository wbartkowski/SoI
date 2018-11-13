//talica danych
String[][] dane = { 
{"Ala ma kota", "mieszkanie.png"},
{"A kot to idiota", "samochod.png"},
{"dlatego Ala", "ludzik.png" }
};

int ktory = 0;

void setup(){
  size(700, 500); 
  textSize(50);
}

void draw(){
  background(255);
  fill(100);
  PImage obraz = loadImage(dane[ktory][1]);
  image(obraz, 250, 250);
  text(dane[ktory][0], 150, 250);
}

void keyReleased() {
  if(ktory < dane.length-1) ktory++; else ktory = 0;
}
