import processing.pdf.*;

PShape kot;

void setup() {
  size(500, 707);
  background(255);
  kot = loadShape("kotek.svg");
  
  beginRecord(PDF,"plakat.pdf");
  textSize(70);
  fill(255);
  strokeWeight(220);
  ellipse(width/2, height/2, width+210, width+210);
  strokeWeight(12);
  ellipse(width/2, height/2, 200, 200);
  kot.translate(320, 340);
  kot.scale(0.3);
}

void draw() {
  if (frameCount<6) {
    kot.rotate(radians(72));
    kot.translate(200,200);
    shape(kot, 0, 0);
  }
}

void keyPressed() {
  endRecord(); 
}
