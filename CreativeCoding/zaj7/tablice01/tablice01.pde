//talica danych
int[] dane = { 
100, 
50, 
30, 
130, 
55, 
70 
};

int ktory = 0;

void setup(){
  size(700, 500); 
  imageMode(CENTER);
}

void draw(){
  background(255);
  strokeWeight(dane[ktory]);
  point(350, 250);
}

void keyReleased() {
  if(ktory < dane.length-1) ktory++; else ktory = 0;
}
