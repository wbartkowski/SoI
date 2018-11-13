void setup() {
  // put your setup code here, to run once:

  pinMode(A0, INPUT_PULLUP); //PULLUP oznacza wlaczenie wewnętrzengo rezystora między A0 a 5V (okolo 20KOm)

  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:

  int odczyt = analogRead(A0);

  Serial.println(odczyt); //wysylamy dane i oddzielamy je znakiem przejscia do nowego wiersza

  delay(1000/20); //czekaj 1/20 sekundy
}
