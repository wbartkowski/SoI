void setup() {
  size(700, 500);
  rectMode(CENTER);
  textSize(40);
}

float y1 = -100;
float y2 = -50;
float y3 = -80;
float x1 = 100;
float x2 = 300;
float x3 = 600;
float v1 = 1.5;
float v2 = 3.5;
float v3 = 2.5;
boolean zjedzonyY1 = false; 
boolean zjedzonyY2 = false; 
boolean zjedzonyY3 = false; 
int punkty = 0;

void draw() {
  background(0);
  stroke(#F0E916);
  strokeWeight(15);
  if (!zjedzonyY1) {
    point(x1, y1);
  }
  strokeWeight(25);
  if (!zjedzonyY2) {
    point(x2, y2);
  }
  strokeWeight(5);
  if (!zjedzonyY3) {
    point(x3, y3);
  }
  noStroke();
  fill(#FF2EF5);
  rect(mouseX, 460, 60, 30);
  y1 = y1 + v1;
  y2 = y2 + v2;
  y3 = y3 + v3;

  if (dist(mouseX, 460, x1, y1) < 20) {
    if(!zjedzonyY1) punkty++;
    zjedzonyY1 = true;
  }
  if (dist(mouseX, 460, x2, y2) < 20) {
    if(!zjedzonyY2) punkty++;
    zjedzonyY2 = true;
  }
  if (dist(mouseX, 460, x3, y3) < 20) {
    if(!zjedzonyY3) punkty++;
    zjedzonyY3 = true;
  }

  if (zjedzonyY1) {
    fill(255, 0, 0);
    text("mam cie nr 1", width/2, height/2);
  }
  if (zjedzonyY2) {
    fill(255, 0, 0);
    text("mam cie nr 2", width/2, height/2+50);
  }
  if (zjedzonyY3) {
    fill(255, 0, 0);
    text("mam cie nr 3", width/2, height/2+100);
  }

  if (punkty > 20) {
    text("Uratowany!!!!!", 100, 100);
  }
  if(punkty < 0) {
    background(0,0,255);
    text("Game OVER!!!!!", 100, 100);
  }    

    //reset wszechswiata
    if (y1>700) {
      if(!zjedzonyY1) punkty --;
      y1 = -100;
      zjedzonyY1 = false; 
      v1 = random(0.5, 6);
      x1 = random(30, width - 30); 
    }
    if (y2>700) {
      if(!zjedzonyY1) punkty --;
      y2 = -100;
      zjedzonyY2 = false; 
      v2 = random(0.5, 6);
      x2 = random(30, width - 30); 
    }
    if (y3>700) {
      if(!zjedzonyY1) punkty --;
      y3 = -100;
      zjedzonyY3 = false; 
      v3 = random(0.5, 6);
      x3 = random(30, width - 30); 
    }
  
   text("score: " + punkty, 40, 40); 
}
