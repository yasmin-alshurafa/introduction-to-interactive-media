int button1 = 10;
int button2 = 9;
int button3 = 8;

int led1 = 13;
int led2 = 12;
int led3 = 11;

void setup() {
  
  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  pinMode(led3, OUTPUT);
  
  pinMode(button1, INPUT);
  pinMode(button2, INPUT);
  pinMode(button3, INPUT);

}

void loop() {

  int buttonState1 = digitalRead(button1);
  int buttonState2 = digitalRead(button2);
  int buttonState3 = digitalRead(button3);

//if button1 and button2 are pressed open LED 13 else close it
  if (buttonState1 == HIGH){
    digitalWrite(led1, HIGH);
    
    }else{
      digitalWrite(led1, LOW);
      }
      
   if (buttonState2 == HIGH){
    digitalWrite(led1, HIGH);
    digitalWrite(led2, HIGH);
    
    }else{
      digitalWrite(led1, LOW);
      digitalWrite(led2, LOW);
      }
    if (buttonState3 == HIGH){
    digitalWrite(led1, HIGH);
    digitalWrite(led2, HIGH);
    digitalWrite(led3, HIGH);
    
    }else{
      digitalWrite(led1, LOW);
      digitalWrite(led2, LOW);
      digitalWrite(led3, LOW);
      }
}
