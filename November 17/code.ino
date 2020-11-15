//Yasmin Alshurafa
// 17 November 2020
// Assignment 8: Musical Intrument




// button is connected to digital pin 7
const int button = 7;

// led1 and led2 are connected to digital pins 2 and 3
const int led1 = 2;
const int led2 = 3;

//buzzer is connected to digital pin 8;
int buzzer = 8;

// sensor is connected to analog pin A1
int sensor = A1;

void setup() {

  Serial.begin(9600);

  // set button and sensor as input
  pinMode(button, INPUT);
  pinMode(sensor, INPUT);
  
  // set led1 and led2 as outputs
  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);

  //set buzzer as output
  pinMode(buzzer, OUTPUT);

}

void loop() {

  //read the digital pin and the analog pin
  
  int buttonState = digitalRead(button);
  int sensorValue = analogRead(sensor);
  
  //if sensorVlaue if greater than 100, open led2 and set buzzer level as 1047
  
  if (sensorValue >= 100) {
    
    analogWrite(led2, 255);
    tone(buzzer, 1047, 1000);
    int pauseBetweenNotes = 1000 * 1.30;
    delay(pauseBetweenNotes);
    noTone(buzzer);
    
  }else{
    
    analogWrite(led2, 0);
    noTone(buzzer);
    
  }
  
  //if button is pressed open led1 and set buzzer level as 4070
  
  if (buttonState == HIGH) {
    
    digitalWrite(led1, HIGH);
    tone(buzzer, 4070, 1000);
    int pauseBetweenNotes = 1000 * 1.30;
    delay(pauseBetweenNotes);
    noTone(buzzer);
    
  }else{
    
    digitalWrite(led1, LOW);
    noTone(buzzer);
    
  }
  Serial.print (sensorValue);
}
