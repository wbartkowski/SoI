void setup() {

  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);

}

void loop() {
  
  digitalWrite(5, HIGH);
  delay(100);
  digitalWrite(5, LOW);
  delay(100);
  
  digitalWrite(6, HIGH);
  delay(150);
  digitalWrite(6, LOW);
  delay(400);
  
}
