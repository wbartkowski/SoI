
size( 500, 500);
background(255);
float duu;
duu = 0; //wkladamy do srodka duu liczbe 0
float los;

while (duu < 1000) { //kiedy skonczyc powtarzac
  los = random(1,6);
  duu = duu + 1;
  stroke(0, 50);
  line(los, 250-duu, 500, 250+duu);
  stroke(0, 10);
  line(0, 250+duu, 500*los, 250-duu);
}
