#include <Servo.h>

Servo motorek;

void setup() {
  
  motorek.attach(9);  
  pinMode(A0, INPUT_PULLUP); //PULLUP oznacza wlaczenie wewnętrzengo rezystora między A0 a 5V (okolo 20KOm)

}

void loop() {

  int odczyt = analogRead(A0);
  motorek.write(40);
  delay(odczyt);
  motorek.write(140);
  delay(odczyt);
}
