
PImage obraz;

size(500, 500);
obraz = loadImage("kotek.jpg");

image(obraz, -200, -50);
translate(250, 250);
rotate(PI*0.5);
image(obraz, 0, 0, 150, 100);
