PImage obrazek;  

void setup() {
  size(654, 581, P2D);
  obrazek = loadImage("lew.jpg");
}

void draw() {
  image(obrazek, 0, 0);
  for (int i = 0; i<10000; i++) { //powtorz 100 razy
    float x = random(width); 
    float y = random(height); 
    //musze zaokraglic round bo get chce liczbe calkowita
    color c = obrazek.get(round(x), round(y));
    stroke(c, 150);
    strokeWeight(20);
    point(x, y);
  }
  saveFrame();
}
