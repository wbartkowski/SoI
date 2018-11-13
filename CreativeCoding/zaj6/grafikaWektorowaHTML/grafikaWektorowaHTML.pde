PShape kot;

void setup(){
  size(500, 500);
  background(255);
  kot = loadShape("kotek.svg");
  textSize(70);
  fill(255);
}

void draw(){
  //background(255);
  pushMatrix();
  rotate(frameCount*0.001);
  scale(frameCount*0.01);
  translate(-frameCount*0.8, -frameCount*0.45);
  shape(kot, 50, 50);  
  popMatrix();
  if(frameCount>100 && frameCount<700){
    translate(250,250);
    rotate(frameCount*0.01);
    text("Miauuu!!!", -100, 0);
  }
  
}
