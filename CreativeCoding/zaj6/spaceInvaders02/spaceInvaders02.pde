void setup(){
   size(700, 500);
   rectMode(CENTER);
   textSize(40);
}

float y1 = -100;
float y2 = -50;
float y3 = -80;
boolean zjedzonyY1 = false; 
boolean zjedzonyY2 = false; 
boolean zjedzonyY3 = false; 

void draw(){
  background(0);
  stroke(#F0E916);
  strokeWeight(15);
  if(!zjedzonyY1) {
    point(100,y1);
  }
  strokeWeight(25);
  if(!zjedzonyY2) {
  point(300,y2);
  }
  strokeWeight(5);
  if(!zjedzonyY3) {
  point(600,y3);
  }
  noStroke();
  fill(#FF2EF5);
  rect(mouseX, 460, 60, 30);
  y1 = y1 + 0.5;
  y2 = y2 + 3.5;
  y3 = y3 + 1.1;

  if(dist(mouseX,460,100,y1) < 20) {
    zjedzonyY1 = true; 
  }
  if(dist(mouseX,460,300,y2) < 20) {
    zjedzonyY2 = true; 
  }
  if(dist(mouseX,460,600,y3) < 20) {
    zjedzonyY3 = true; 
  }
  
  if(zjedzonyY1) {
    fill(255,0,0);
    text("mam cie nr 1", width/2, height/2);
  }
  if(zjedzonyY2) {
    fill(255,0,0);
    text("mam cie nr 2", width/2, height/2+50);
  }
  if(zjedzonyY3) {
    fill(255,0,0);
    text("mam cie nr 3", width/2, height/2+100);
  }
  
  //reset wszechswiata
}
