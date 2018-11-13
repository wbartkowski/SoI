//talica tablic danych
//co jest w tablicy
//tekst, obrazek, gdzie jak w lewo, gdzie jak w prawo, poz. tekstu x, poz tekstu y
String[][] dane = { 
{"Ala ma kota", "mieszkanie.png",   "1", "3", "100", "100"}, //0
{"A kot to idiota", "samochod.png", "0", "4",  "50",  "50"},   //1
{"dlatego Ala", "ludzik.png",       "3", "1", "150", "200"}, //2
{"woli mieć", "woli.jpg",           "1", "4", "300", "300"}, //3
{"świnkę", "swinka.jpg",            "0", "2", "200", "100"}  //4
};

//zaczyna opowiesc od pozycji 0.
int ktory = 0;

void setup(){
  size(700, 500); 
  textSize(50);
  imageMode(CENTER);
}

void draw(){
  background(255);
  fill(100);
  PImage obraz = loadImage(dane[ktory][1]);
  image(obraz, 350, 250);
  text(dane[ktory][0], int(dane[ktory][4]), int(dane[ktory][5]));
}

void keyReleased() {
  //wcisniecie 'a'; znaczy w lewo czyli wybieram co jak w lewo
  //inforamcja o tym zapisana jest w tablicy na pozycji [...][2]
  if(key == 'a') ktory = int(dane[ktory][2]);
  //wcisniecie 'd' znaczy w prawo czyli wybieram co jak w prawo
  //inforamcja o tym zapisana jest w tablicy na pozycji [...][3]
  if(key == 'd') ktory = int(dane[ktory][3]);

}
