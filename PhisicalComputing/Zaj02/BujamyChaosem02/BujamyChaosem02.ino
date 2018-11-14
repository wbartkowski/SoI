#include <Servo.h>

Servo motorek;

void setup() {
    motorek.attach(9);  
}

void loop() {

  int losKat = random(0, 180);
  motorek.write(losKat);
  int losPrzerwa = random(1000/30, 1000/4);
  delay(losPrzerwa);
}
