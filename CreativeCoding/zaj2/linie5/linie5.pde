
size( 500, 500);
background(255);
float duu;
duu = 0; //wkladamy do srodka duu liczbe 0
stroke(0, 50);
while (duu < 250) { //kiedy skonczyc powtarzac
  duu = duu + 0.5;
  line(0, 250-duu, 500, 250+duu);
}

line(500,0,0,500);
