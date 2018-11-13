
size( 500, 500);
background(0);
float duu;
duu = 0; //wkladamy do srodka duu liczbe 0
float los1, los2;
stroke(255, 200);
strokeWeight(50);
while (duu < 20) { //kiedy skonczyc powtarzac
  los1 = random(50,450);
  los2 = random(50,450);
  point(los1, los2);
  duu++; //duu = duu + 1;
}
