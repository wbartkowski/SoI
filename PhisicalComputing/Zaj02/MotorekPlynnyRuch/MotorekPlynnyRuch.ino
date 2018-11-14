#include <Servo.h>

Servo motorek;

void setup() {
    motorek.attach(9);  
}

void loop() {

  for( int kat = 0; kat < 180; kat++) {
    motorek.write(kat);
    delay(15);
  }

  
}
