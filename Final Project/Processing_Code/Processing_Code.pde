//Yasmin Alshurafa
//10 December 2020
//Final Project: Responsive LEDs


//import sound library
import processing.sound.*;
SoundFile song1;
Amplitude analyzer1;
SoundFile song2;
Amplitude analyzer2;
SoundFile song3;
Amplitude analyzer3;
SoundFile song4;
Amplitude analyzer4;

//messages for the game
String message3 = "All I Want for Christmas is you";
String message4 = "Jingle Bells..";
String message1 = "It's Beginning to look alot like Christmas..";
String message2 = "Let it Snow..";
String intro1 = "press any button to play a song";
String intro2 = "back";
String name4= "Frank Sinatra";
String name1 = "Michael Buble";
String name2 = "Dean Martin";
String name3 = "Mariah Carey";
String name = "Responsive LEDs";

//import communication library
import processing.serial.*;
Serial port;

//x and y position of circles
float circlex;
float circle1y;
float circle2y;
float circle3y;
float circle4y;

//x and y postion for back circle
float backx;
float backy;

//for background images
PImage backgroundPic;
PImage backgroundPic1;
PImage backgroundPic2;
PImage backgroundPic3;
PImage backgroundPic4;

//boolean for the music functions 
boolean music1;
boolean music2;
boolean music3;
boolean music4;

//boolean for the start and back functions
boolean start = true;
boolean back;

//int for playing songs once
int x1;
int x2;
int x3;
int x4;

void setup(){
  
  //set canvas size
  size(400,700); 
  
  //upload the images for each background
  backgroundPic = loadImage("img1.jpg");
  backgroundPic1 = loadImage("img2.jpg");
  backgroundPic2 = loadImage("img3.jpg");
  backgroundPic3 = loadImage("img4.jpg");
  backgroundPic4 = loadImage("img5.jpg");
  
  //initial positions x and y of each circle
  circlex= 70;
  circle1y= height/2;
  circle2y= height/2 + 100;
  circle3y= height/2 + 200;
  circle4y= height/2 + 300;
  
  
  //position of x and y of back circle
  backx = width-50;
  backy = height-50;
  
  //upload the songs
  song1 = new SoundFile (this, "music1.mp3");
  analyzer1 = new Amplitude(this);
  song2 = new SoundFile (this, "music2.mp3");
  analyzer2 = new Amplitude(this);
  song3 = new SoundFile (this, "music3.mp3");
  analyzer3 = new Amplitude(this);
  song4 = new SoundFile (this, "music4.mp3");
  analyzer4 = new Amplitude(this);
  
  //to start communication between Arduino and Processing
  println(Serial.list());
  port = new Serial(this, Serial.list()[3], 9600);
  
  //font, font size, font color used for the Processing slide
  PFont f = createFont("Sunday Morning.otf", 20);
  textFont(f, 20);
  fill(162, 52, 52);
  
}
void serialEvent (Serial port) {
  
  String inString = port.readStringUntil('\n');
  
  if (inString != null) {
    inString = trim(inString);
    int[] controls = int(split(inString, ","));
    
    if (controls.length >= 5) {
      
      if (controls[0] > 500){
        back = true;
      }else{
        back = false;
      }
      if (controls[1] > 500){
        music1 = true;
      }else{
        music1 = false;
      }
      if (controls[2] > 500){
        music2 = true;
      }else{
        music2 = false;
      }
      if (controls[3] > 500){
        music3 = true;
      }else{
        music3 = false;
      }
      if (controls[4] > 500){
        music4 = true;
      }else{
        music4 = false;
      }
      println("new");
    }
  }
}
void draw(){
  
  // start page
  if (start){
    
    //add the start page image
    image(backgroundPic, 0, 0, width, height);
    
    //draw circles postion, size and color
    noStroke();
    fill(18, 186, 250);
    ellipse(circlex, circle1y, 50,50);
    fill(250, 18, 22);
    ellipse(circlex, circle2y, 50,50);
    fill(250, 243, 18);
    ellipse(circlex, circle3y, 50,50);
    fill(18, 250, 42);
    ellipse(circlex, circle4y, 50,50);
    fill(162, 52, 52);
    
    //print intro text
    fill(162, 52, 52);
    text(intro1, 10, 100);
    fill(255);
    text(name1, 100, circle1y);
    text(name2, 100, circle2y);
    text(name3, 100, circle3y);
    text(name4, 100, circle4y);
    text(name, 130, 50);
    
  }else{
    
    //if first button is pressed
    if (music1) {
      //set background
      image(backgroundPic1, 0, 0, width, height);
      
      //draw back circle
      fill(0);
      ellipse(backx, backy, 60,60);
      fill(255);
      text(intro2, backx-15, backy);
      
      //write the song's name
      fill(162, 52, 52);
      text(message1, 10, 100);

      //play the song once
      x1++;
      if(x1 == 1){
        song1.play();
      }
      
      //start analyzing song and blinking LEDs
      analyzer1.input(song1);
      float vol = analyzer1.analyze();
   
        if (0.0 < vol && vol <= 0.1){
          port.write('R');
          
        }else if(0.2 < vol && vol <= 0.3){
          port.write('G');
          
        }else if (0.4 < vol && vol <= 0.5){
          port.write('Q');
          
        }else if(0.6 < vol && vol <= 0.7){
          port.write('E');

        }else if(0.8 < vol && vol <= 0.9){
          port.write('T');
        }
        println(vol);
      }else{
        if (back) {
          port.write('0');
          song1.stop();
          music1 = false;
          start = true;
        }
      }
      
      //if second button is pressed
    if (music2) {
      
      //set background
      image(backgroundPic2, 0, 0, width, height);
      
      //draw back circle
      fill(0);
      ellipse(backx, backy, 60,60);
      fill(255);
      text(intro2, backx-15, backy);
      
      //write the song's name
      fill(162, 52, 52);
      text(message2, 10, 100);

      //play the song once
      x2++;
      if(x2 == 1){
        song2.play();
      }
      
      //start analyzing song and blinking LEDs
      analyzer2.input(song2);
      float vol = analyzer2.analyze();
   
   
        if (0.0 < vol && vol <= 0.1){
          port.write('R');

        }else if(0.2 < vol && vol <= 0.3){
          port.write('G');

        }else if (0.4 < vol && vol <= 0.5){
          port.write('Q');

        }else if(0.6 < vol && vol <= 0.7){
          port.write('E');

        }else if(0.8 < vol && vol <= 0.9){
          port.write('T');
        }
        println(vol);
      }else{
        if (back) {
          port.write('0');
          song2.stop();
          music2 = false;
          start = true;
        }
      }
    //if third button is pressed
    if (music3) {
      
      //set background
      image(backgroundPic3, 0, 0, width, height);
      
      //draw back circle
      fill(0);
      ellipse(backx, backy, 60,60);
      fill(255);
      text(intro2, backx-15, backy);
      
      //write the song's name
      fill(162, 52, 52);
      text(message3, 10, 100);

      //play the song once
      x3++;
      if(x3 == 1){
        song3.play();
      }
      
      //start analyzing song and blinking LEDs
      analyzer3.input(song3);
      float vol = analyzer3.analyze();
   
        if (0.0 < vol && vol <= 0.1){
          port.write('R');

        }else if(0.2 < vol && vol <= 0.3){
          port.write('G');

        }else if (0.4 < vol && vol <= 0.5){
          port.write('Q');

        }else if(0.6 < vol && vol <= 0.7){
          port.write('E');
 
        }else if(0.8 < vol && vol <= 0.9){
          port.write('T');
        }
        println(vol);
      }else{
        if (back) {
          port.write('0');
          song3.stop();
          music3 = false;
          start = true;
        }
      }
    //if fourth button is pressed
    if (music4) {
      
      //set background
      image(backgroundPic4, 0, 0, width, height);
      
      //draw back circle
      fill(0);
      ellipse(backx, backy, 60,60);
      fill(255);
      text(intro2, backx-15, backy);
      
      //write the song's name
      fill(162, 52, 52);
      text(message4, 10, 100);

      //play the song once
      x4++;
      if(x4 == 1){
        song4.play();
      }
      
      //start analyzing song and blinking LEDs
      analyzer4.input(song4);
      float vol = analyzer4.analyze();
   
        if (0.0 < vol && vol <= 0.1){
          port.write('R');

        }else if(0.2 < vol && vol <= 0.3){
          port.write('G');
          
        }else if (0.4 < vol && vol <= 0.5){
          port.write('Q');

        }else if(0.6 < vol && vol <= 0.7){
          port.write('E');

        }else if(0.8 < vol && vol <= 0.9){
          port.write('T');
        }
        println(vol);
      }else{
        if (back) {
          port.write('0');
          song4.stop();
          music4 = false;
          start = true;
        }
      }
  }
}

void mousePressed(){
  while (start){
    start = false;
  }
}
