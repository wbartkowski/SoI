//talica danych
String[] dane = { 
"Ala ma kota", 
"A kot to idiota", 
"dlatego Ala", 
"nie ma już kota", 
"za to od dziś...", 
"Ala ma psa!" 
};

int ktory = 0;

void setup(){
  size(700, 500); 
  textSize(50);
}

void draw(){
  background(255);
  fill(100);
  text(dane[ktory], 150, 250);
}

void keyReleased() {
  if(ktory < dane.length-1) ktory++; else ktory = 0;
}
