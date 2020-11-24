//Yasmin Alshurafa
//24 November 2020
//Arduino and Processing

// include servo library
#include <Servo.h>

// object to control the servo
Servo servo;

//buzzer is connected to digital pin 6;
int buzzer = 6;

//intial postion of servo
int pos = 0;

// leds are connected to pins 8 and 9
const int greenled = 9;
const int redled = 8;

//a variable to read incoming serial data
int incomingByte;

void setup() {
  
  Serial.begin(9600);

// set the leds as outputs
  pinMode(greenled, OUTPUT);
  pinMode(redled, OUTPUT);
  
// attach the object servo to pin 7
  servo.attach(7);

//set buzzer as output
  pinMode(buzzer, OUTPUT);
}

void loop() {
  
// if statement to check the incoming serial data
  if (Serial.available() > 0) {
    
// read the variable incomingByte
    incomingByte = Serial.read();
    
// if it's G turn on the green led
    if (incomingByte == 'G') {
      
      digitalWrite(greenled, HIGH);
      
// if it's O turn off the green led      
    }else {
      
      if (incomingByte == 'O') {
        
        digitalWrite(greenled, LOW);
      }
    }
    
// if it's R blink the red led and make the buzzer beep
    if (incomingByte == 'R') {
      
      tone(buzzer, 3323, 1500);
      int pauseBetweenNotes = 1500 * 1.30;
      delay(pauseBetweenNotes);
      noTone(buzzer);
      digitalWrite(redled, HIGH);
      delay(1000);
      digitalWrite(redled, LOW);
      delay(1000);
      digitalWrite(redled, HIGH);
      delay(1000);
      digitalWrite(redled, LOW);
      delay(1000);

    }
// if it's M move the servo to the right from 0 to 180 by steps of 3
    if (incomingByte == 'M') {
      
      for (pos >= 0; pos <= 180; pos += 3) {
        
        servo.write(pos);
        delay(15);
      }
    }
    
// if it's S move the servo to the left from 180 to 0 by steps of 3    
    if (incomingByte == 'S') {
      
      for (pos <= 180; pos >= 0; pos -= 3) {
        
        servo.write(pos);
        delay(15);
      }
    }
  }
}
