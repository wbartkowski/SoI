
size( 500, 500);
background(255);
float duu;
duu = 0; //wkladamy do srodka duu liczbe 0
float los;

while (duu < 1000) { //kiedy skonczyc powtarzac
  los = random(1,6);
 
  line(los, 250+duu, 500*los, 250-duu);
}
