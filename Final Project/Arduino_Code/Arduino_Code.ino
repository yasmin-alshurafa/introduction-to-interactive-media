//Yasmin Alshurafa
//10 December 2020
//Final Project: Responsive LEDs

//connect LEDs to pins
const int yellow3led = 11;
const int blue2led = 10;
const int red3led = 9;
const int green2led = 8;
const int yellow2led = 7;
const int red1led = 6;
const int blue1led = 5;
const int yellow1led = 4;
const int red2led = 3;
const int green1led = 2;

//connect buttons to pins
const int back= A5;
const int music1= A1;
const int music2= A2;
const int music3= A3;
const int music4= A4;

//variables to collect data from buttons
int backread;
int music1read;
int music2read;
int music3read;
int music4read;

String input;

int incomingByte = 0;

void setup() {
  
  Serial.begin(9600);

  //set LEDs as outputs
  pinMode(red1led, OUTPUT);
  pinMode(blue1led, OUTPUT);
  pinMode(yellow1led, OUTPUT);
  pinMode(red2led, OUTPUT);
  pinMode(green1led, OUTPUT);
  pinMode(yellow2led, OUTPUT);
  pinMode(green2led, OUTPUT);
  pinMode(red3led, OUTPUT);
  pinMode(blue2led, OUTPUT);
  pinMode(yellow3led, OUTPUT);

  //set buttons as inputs
  pinMode(back, INPUT_PULLUP);
  pinMode(music1, INPUT_PULLUP);
  pinMode(music2, INPUT_PULLUP);
  pinMode(music3, INPUT_PULLUP);
  pinMode(music4, INPUT_PULLUP);

}

void loop() {

  //read data from each button
  backread = analogRead(back);
  music1read = analogRead(music1);
  music2read = analogRead(music2);
  music3read = analogRead(music3);
  music4read = analogRead(music4);

  //what to send to processing
  input = String(backread) + "," + String(music1read) + "," + String(music2read) + "," + String(music3read)+ "," + String(music4read);

  //send to processing
  Serial.println(input);

  //if serial is available
  if (Serial.available() > 0) {

    //read data from processing
    incomingByte = Serial.read();

    //if statements to check data and open or close LEDs
    if (incomingByte == 'R') {

      digitalWrite(red1led, HIGH);
      digitalWrite(red2led, LOW);
      digitalWrite(red3led, LOW);
      digitalWrite(yellow1led, HIGH);
      digitalWrite(yellow2led, LOW);
      digitalWrite(yellow3led, LOW);
      digitalWrite(green1led, LOW);
      digitalWrite(green2led, LOW);
      digitalWrite(blue1led, LOW);
      digitalWrite(blue2led, LOW);
      
    }else if (incomingByte == 'G') {
      
      digitalWrite(red1led, LOW);
      digitalWrite(red2led, LOW);
      digitalWrite(red3led, LOW);
      digitalWrite(yellow1led, LOW);
      digitalWrite(yellow2led, LOW);
      digitalWrite(yellow3led, LOW);
      digitalWrite(green1led, HIGH);
      digitalWrite(green2led, LOW);
      digitalWrite(blue1led, HIGH);
      digitalWrite(blue2led, LOW);

    }else if (incomingByte == 'Q') {
      
      digitalWrite(red1led, LOW);
      digitalWrite(red2led, HIGH);
      digitalWrite(red3led, LOW);
      digitalWrite(yellow1led, LOW);
      digitalWrite(yellow2led, HIGH);
      digitalWrite(yellow3led, LOW);
      digitalWrite(green1led, LOW);
      digitalWrite(green2led, LOW);
      digitalWrite(blue1led, LOW);
      digitalWrite(blue2led, LOW);

    }else if (incomingByte == 'E') {
      
      digitalWrite(red1led, LOW);
      digitalWrite(red2led, LOW);
      digitalWrite(red3led, HIGH);
      digitalWrite(yellow1led, LOW);
      digitalWrite(yellow2led, LOW);
      digitalWrite(yellow3led, LOW);
      digitalWrite(green1led, LOW);
      digitalWrite(green2led, HIGH);
      digitalWrite(blue1led, LOW);
      digitalWrite(blue2led, LOW);

    }else if (incomingByte == 'T') {
      
      digitalWrite(red1led, LOW);
      digitalWrite(red2led, LOW);
      digitalWrite(red3led, LOW);
      digitalWrite(yellow1led, LOW);
      digitalWrite(yellow2led, LOW);
      digitalWrite(yellow3led, HIGH);
      digitalWrite(green1led, LOW);
      digitalWrite(green2led, LOW);
      digitalWrite(blue1led, LOW);
      digitalWrite(blue2led, HIGH);
      
    }else if (incomingByte == '0') {
      digitalWrite(red1led, LOW);
      digitalWrite(red2led, LOW);
      digitalWrite(red3led, LOW);
      digitalWrite(yellow1led, LOW);
      digitalWrite(yellow2led, LOW);
      digitalWrite(yellow3led, LOW);
      digitalWrite(green1led, LOW);
      digitalWrite(green2led, LOW);
      digitalWrite(blue1led, LOW);
      digitalWrite(blue2led, LOW);
    }
  }
}
