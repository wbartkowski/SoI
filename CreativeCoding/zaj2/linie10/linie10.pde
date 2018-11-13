
size( 500, 500);
background(255);
float duu;
duu = 0; //wkladamy do srodka duu liczbe 0
float los;

while (duu < 100) { //kiedy skonczyc powtarzac
  los = random(0,500);
  line(los, 250, 250, los);
  duu++; //duu = duu + 1;
}
