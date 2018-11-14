#include <ADCTouchSensor.h>

ADCTouchSensor czujek = ADCTouchSensor(A0, -1);

void setup() {

  pinMode(6, OUTPUT);

  czujek.begin();

}

void loop() {

  int poczucie = czujek.read();
  
  analogWrite(6, poczucie);   

}
