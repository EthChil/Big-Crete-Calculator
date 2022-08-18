void setup() {
  Serial.begin(9600);
  
  //Highside scanning outputs
  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);

  //Lowside detection inputs
  pinMode(8, INPUT);
  pinMode(9, INPUT);
  pinMode(10, INPUT);
  pinMode(11, INPUT);
  pinMode(12, INPUT);
}

int keyLookup[] = {1, 2, 3, 4, 5,
                   6, 7, 8, 9, 10,
                   11, 12, 13, 14, -1,
                   15, 16, 17, 18, 19,
                   20, 21, 22, 23, -2,
                   24, -3, 25, 26, 27};

void loop() {
  // put your main code here, to run repeatedly:

  //Scan highsides from 1 -> 6
  //For each highside detect if corresponding lowside is on
  //

  for(int i = 2; i < 7; i++){
    digitalWrite(i, HIGH);
    delay(10);

    for(int k = 8; k < 13; k++) {
      if(digitalRead(k) == HIGH){
        Serial.print("BUTTON S");
        Serial.print((((i-2)*5)+(k-7)));
        Serial.println(" PRESSED");
      }
    }

    
    digitalWrite(i, LOW);
    delay(100);
  }
  

}
