//Yasmin Alshurafa
// 3 November 2020
// Assignment 6: LEDs and Buttons


//each digital pin has a button attached to it with special name
const int button1 = 10;
const int button2 = 9;
const int button3 = 8;

//each digital pin has a LED attached to it with special name
int led1 = 13;
int led2 = 12;
int led3 = 11;

void setup() {

//make LEDs' pin as outputs
  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  pinMode(led3, OUTPUT);

//make buttons' pins as inputs
  pinMode(button1, INPUT);
  pinMode(button2, INPUT);
  pinMode(button3, INPUT);

}

void loop() {

//read the input pins
  int buttonState1 = digitalRead(button1);
  int buttonState2 = digitalRead(button2);
  int buttonState3 = digitalRead(button3);

//if button1 is pressed open led1 else close it
  if (buttonState1 == HIGH){
    digitalWrite(led1, HIGH);
    
    }else{
      digitalWrite(led1, LOW);
      }

//if button2 is pressed open led1 and led2 else close it
   if (buttonState2 == HIGH){
    digitalWrite(led1, HIGH);
    digitalWrite(led2, HIGH);
    
    }else{
      digitalWrite(led1, LOW);
      digitalWrite(led2, LOW);
      }
      
//if button3 is pressed open led1, led2 and led3 else close it
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
