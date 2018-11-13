#include <Servo.h>

Servo motorek;  // create servo object to control a servo

void setup() {
  motorek.attach(9);  // attaches the servo on pin 9 to the servo object
}

void loop() {
    motorek.write(50);              // tell servo to go to position in variable 'pos'
    delay(15);                       
    motorek.write(90);              // tell servo to go to position in variable 'pos'
    delay(15);                       
}

