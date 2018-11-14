void setup() {
  pinMode(6, OUTPUT);
}

void loop() {
  analogWrite(6, 10);
  delay(250);
  analogWrite(6, 20);
  delay(250);
  analogWrite(6, 50);
  delay(250);
  analogWrite(6, 100);
  delay(250);
  analogWrite(6, 255);
  delay(250);
}
