PImage superCoool;  

void setup() {
  size(640, 360);
  superCoool = loadImage("moonwalk.jpg"); 
  image(superCoool, 0, 0);
}

void draw() {
  color kolorPunktuPodKursorem = superCoool.get(mouseX, mouseY);
  stroke(kolorPunktuPodKursorem, 100);
  strokeWeight(5);
  if (mousePressed)
    line(mouseX+random(-20,20), mouseY+random(-20,20),mouseX+random(-20,20), mouseY+random(-20,20));
  if(keyPressed)
    saveFrame();
}
