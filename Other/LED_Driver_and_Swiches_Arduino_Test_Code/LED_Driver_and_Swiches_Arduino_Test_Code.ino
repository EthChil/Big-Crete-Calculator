void setup() {
  Serial.begin(9600);

  //SWITCH PINOUT
//  //Highside scanning outputs
//  pinMode(2, OUTPUT);
//  pinMode(3, OUTPUT);
//  pinMode(4, OUTPUT);
//  pinMode(5, OUTPUT);
//  pinMode(6, OUTPUT);
//  pinMode(7, OUTPUT);
//
//  //Lowside detection inputs
//  pinMode(8, INPUT);
//  pinMode(9, INPUT);
//  pinMode(10, INPUT);
//  pinMode(11, INPUT);
//  pinMode(12, INPUT);

  //LED PINOUT
  //Lowside gate control
  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);

  //Highside gate control
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);
  pinMode(8, OUTPUT);

  //Enable pin
  pinMode(13, OUTPUT);
}

int keyLookup[] = {1, 2, 3, 4, 5,
                   6, 7, 8, 9, 10,
                   11, 12, 13, 14, -1,
                   15, 16, 17, 18, 19,
                   20, 21, 22, 23, -2,
                   24, -3, 25, 26, 27};

int pins[] = {8,7,6,5};
int decodeOrder[] = {4, 3, 2, 1, 0, 5, 6, 7, 8, 9, 14, 13, 12, 11, 10};
int num = 0;

void loop() {
  // put your main code here, to run repeatedly:
    digitalWrite(13, LOW);
  
    digitalWrite(2, HIGH);
    digitalWrite(3, LOW);
    digitalWrite(4, LOW);

    
    for(int q = 0; q < 15; q++){
      for(int i = 0; i < 5; i++){
        byte state = bitRead(decodeOrder[q], i);
        digitalWrite(pins[i], state);
      }
      
//      delay(100);
    }

    

    
    
  //Code that scans switches
//  for(int i = 2; i < 7; i++){
//    digitalWrite(i, HIGH);
//    delay(10);
//
//    for(int k = 8; k < 13; k++) {
//      if(digitalRead(k) == HIGH){
//        Serial.print("BUTTON S");
//        Serial.print((((i-2)*5)+(k-7)));
//        Serial.println(" PRESSED");
//      }
//    }
//    
//    digitalWrite(i, LOW);
//    delay(100);
//  }


  

}
