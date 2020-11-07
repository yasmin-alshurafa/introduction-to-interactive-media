//Yasmin Alshurafa
// 10 November 2020
// Assignment 7: Digital sensor and Analog Sensor




// led 1 and led 2 are connected to digital pins 9 and 10
const int led1 = 9;
const int led2 = 10;

// button is connected to digital pin 11
const int button = 11;

// sensor is connected to analog pin A0
int sensor = A0;

void setup(){

// set led 1 and led 2 as outputs
  pinMode(led1, OUTPUT);
  pinMode (led2, OUTPUT);
  
// set button and sensor as input
  pinMode(button, INPUT);
  pinMode(sensor, INPUT);
}

void loop(){
  
  //read the digital pin and the analog pin
  int buttonState = digitalRead(button);
  int sensorValue = analogRead(sensor);
  
  //if button is pressed close both led 1 and led 2 (restart)
  if (buttonState == HIGH){
    
    //close led1 and led2
    digitalWrite(led1, LOW);
    digitalWrite(led2, LOW);
    
   //if button is released check the sensor
    }else{
      
      //check if the sensor value is larger than 400 fade led 1
      if (sensorValue >= 400){
        
        //this part is taken from examples > analog > fading
        // fade in from min to max in increments of 5 points
        for (int fadeValue = 0 ; fadeValue <= 255; fadeValue += 5){
          
          // sets the value (range from 0 to 255)
          analogWrite(led1, fadeValue);
          
          // keep led 2 off as long as this for statement is working
          analogWrite(led2, 0);
          
          // delay to see effect
          delay(30);
          
          }
          
          //check if the sensor value is less than 400 fade led 2
          }else{
            
            //this part is taken from examples > analog > fading
            // fade in from min to max in increments of 5 points
            for (int fadeValue = 0 ; fadeValue <= 255; fadeValue += 5) {
              
              // sets the value (range from 0 to 255)
              analogWrite(led2, fadeValue);
              
              // keep led 1 off as long as this for statement is working
              analogWrite(led1, 0);
              
              // delay to see effect
              delay(30);
              
              }
         }
     }
}
