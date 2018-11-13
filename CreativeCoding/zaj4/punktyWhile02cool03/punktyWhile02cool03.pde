float DobraZmiana = 250; //zabraklo na 500
size(600, 500); //rozmiar okna
background(255,0,0); //wypelninei okna kolorem lub odcieniem szarosci

while (DobraZmiana > 0) {
  stroke(250-DobraZmiana); //0-255 jasnosc
  strokeWeight(DobraZmiana); //grubosc linii i tez wielkosc kropki
  point(width/2, height/2); //kropka w miejscu 50, 100
  DobraZmiana = DobraZmiana - 25;
}
