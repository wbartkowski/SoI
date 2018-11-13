PImage superCoool;  

void setup() {
  size(640, 360);
  superCoool = loadImage("moonwalk.jpg"); 
  image(superCoool, 0, 0);
}

void draw() {
  color kolorPunktuPodKursorem = superCoool.get(mouseX, mouseY);
  stroke(kolorPunktuPodKursorem, 20);
  float jasnosc = brightness(kolorPunktuPodKursorem);
  strokeWeight(10+jasnosc*0.3);
  point(mouseX, mouseY);
}
