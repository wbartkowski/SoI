PImage superCoool;  

void setup() {
  size(640, 360);
  superCoool = loadImage("moonwalk.jpg"); 
  image(superCoool, 0, 0);
}

void draw() {
  color kolorPunktuPodKursorem = superCoool.get(mouseX, mouseY);
  stroke(kolorPunktuPodKursorem, 20);
  strokeWeight(50);
  point(mouseX, mouseY);
}
