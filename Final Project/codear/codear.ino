const int red1led = 6;
const int blueled = 5;
const int yellowled = 4;
const int red2led = 3;
const int greenled = 2;

const int bluebutton = A0;
const int redbutton = A1;
const int yellowbutton = A2;
const int greenbutton = A3;
const int blackbutton = A4;

int button = 0;
int button1 = 0;
int button2 = 0;
int button3 = 0;
int button4 = 0;

int incomingByte = 0;

void setup() {
  
  Serial.begin(9600);
  
  pinMode(red1led, OUTPUT);
  pinMode(blueled, OUTPUT);
  pinMode(yellowled, OUTPUT);
  pinMode(red2led, OUTPUT);
  pinMode(greenled, OUTPUT);

  pinMode(bluebutton, INPUT);
  pinMode(redbutton, INPUT);
  pinMode(yellowbutton, INPUT);
  pinMode(greenbutton, INPUT);
  pinMode(blackbutton, INPUT);

  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
  }
  establishContact();
}

void loop() {
  
  if (Serial.available() > 0) {

    incomingByte = Serial.read();
    button = analogRead(blackbutton);
    button1 = analogRead(bluebutton);
    button2 = analogRead(redbutton);
    button3 = analogRead(yellowbutton);
    button4 = analogRead(greenbutton);

    Serial.print(button);
    Serial.print(",");
    Serial.print(button1);
    Serial.print(",");
    Serial.print(button2);
    Serial.print(",");
    Serial.print(button3);
    Serial.print(",");
    Serial.print(button4);
    Serial.print(",");  
    
    if (incomingByte == 'R') {

      digitalWrite(red1led, HIGH);
      digitalWrite(red2led, LOW);
      digitalWrite(yellowled, LOW);
      digitalWrite(greenled, LOW);
      digitalWrite(blueled, LOW);
      
    }else if (incomingByte == 'Y') {

      digitalWrite(yellowled, HIGH);
      digitalWrite(red2led, LOW);
      digitalWrite(red1led, LOW);
      digitalWrite(greenled, LOW);
      digitalWrite(blueled, LOW);
      
    }else if (incomingByte == 'G') {

      digitalWrite(greenled, HIGH);
      digitalWrite(red2led, LOW);
      digitalWrite(red1led, LOW);
      digitalWrite(yellowled, LOW);
      digitalWrite(blueled, LOW);

    }else if (incomingByte == 'B') {
      digitalWrite(blueled, HIGH);
      digitalWrite(red2led, LOW);
      digitalWrite(red1led, LOW);
      digitalWrite(greenled, LOW);
      digitalWrite(yellowled, LOW);
      
    }else if (incomingByte == '0') {
      digitalWrite(red2led, LOW);
      digitalWrite(red1led, LOW);
      digitalWrite(yellowled, LOW);
      digitalWrite(greenled, LOW);
      digitalWrite(blueled, LOW);
    }
  }
}
void establishContact() {

  while (Serial.available() <= 0) {

    Serial.println("0,0,0");   // send an initial string
    delay(300);

  }

}
