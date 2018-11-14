#include <Servo.h>

Servo motorek;

void setup() {
    motorek.attach(9); 
    pinMode(6, OUTPUT); 
}

void loop() {

  for( int kat = 0; kat < 180; kat++) {
    motorek.write(kat);
    int jasnosc = map(kat, 0, 180, 0, 20);
    analogWrite(6, jasnosc);
    delay(5);
  }


  for( int kat = 180; kat > 0; kat--) {
    motorek.write(kat);
    int jasnosc = map(kat, 0, 180, 0, 20);
    analogWrite(6, jasnosc);
    delay(5);
  }

}
