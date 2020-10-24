//Yasmin Alshurafa
//Midterm Game
//27 October 2020


//import sound library
import processing.sound.*;
SoundFile file;

//x and y position of ball and radius
float xBall;
float yBall;
float rBall;

//speed of ball across the x and y axis
float xspeedB = random(15,20);
float yspeedB = random(15,20);

//x and y position of paddle, height and width of paddle
float xPaddle;
float yPaddle;
float wPaddle;
float hPaddle;

//speed of paddle across the x and y
float xspeedP = 0;
float yspeedP = 0;

//initial number of lives
float lives = 10;

//messages for the game
String message = "Game Over, Press the mouse to start";
String message2 = "Number of Lives Left = ";
String intro = "Press the mouse to start the game";
String intro2 = "Use the r and l key to move the box across";
String intro3 = "the screen to avoid the ball";

//boolean to check if the player lost
boolean lost = false;

//for background image
PImage backgroundPic;
boolean start = true;

void setup(){
  
//set canvas size
  size(700,700); 
  
//upload the song
  file = new SoundFile(this, "song.mp3");
  
//play the song
  file.play();
  
//upload the image for background
  backgroundPic = loadImage("brick.jpg");
  
//initial position of x, y and radius
  xBall= width/2;
  yBall= height/2;
  rBall= 7.96;
  
//initial speed of ball across the x and y axis
  xspeedB = random(15,20);
  yspeedB = random(15,20);
 
//initial position of paddle across the x and y axis, width and height of paddle
  xPaddle = 100;
  yPaddle = height/2;
  wPaddle = 80;
  hPaddle = 60;

//initial speed of paddle
  xspeedP = 0;
  yspeedP = 0;

//text font, color and size 
  PFont f = createFont("monaco", 20);
  textFont(f, 20);
  fill(255);
}

void draw(){
// when the game starts, put the instructions and black background
  if (start){
    background(0);
    text(intro, 130, height/2);
    text(intro2, 130, 400);
    text(intro3, 130, 450);
    
  }else{

//draw the background image of the game
    image(backgroundPic, 0, 0, width, height);

//draw ball postion, size and color  
    fill(255);
    ellipse(xBall, yBall, 50,50);

//move the ball  
    xBall = xBall + xspeedB;
    yBall = yBall + yspeedB;
  
//check the edges of the canvas for the ball to reflect
    if (xBall > width - 25 || xBall < 0 + 25){
      xspeedB = -xspeedB;
      }
    
    if (yBall > height - 25 || yBall < 0 + 25){
      yspeedB = -yspeedB;
      }

//draw paddle, position, size and color
    fill(255);
    rect(xPaddle, yPaddle, wPaddle, hPaddle);

//move the paddle
    xPaddle += xspeedP;
    yPaddle += yspeedP;
  
//check the edges of the canvas for the paddle to reflect
    if (xPaddle >= width - 80 || xPaddle < 0){
      xPaddle= -xPaddle;
     }
 
//print the message and change with number of lives
    text(message2 + lives, 20, 40);

//check keys to move the paddle  
    if (keyPressed == true && key == 'l'){
      xPaddle = xPaddle - 8;
    }
  
    if (keyPressed == true && key == 'r'){
      xPaddle = xPaddle + 8;
     }

//check if paddle hits the ball the decrese the number of lives
    boolean hit = BallPaddle(xBall, yBall, rBall, xPaddle, yPaddle, wPaddle, hPaddle);
    if (hit){
      lives--;
    }

//check if the number of lives reached 0
    if (lives <= 0){
      
//print game over, stop the sound
      background(0);
      file.stop();
      text(message, 130, height/2);
//stop the game
      noLoop();
//the player lost
      lost = true;
    }
  }
}

//to restart the game after losing it
void mousePressed(){
  while (start){
    start = false;
  }
  if (lost == true){
//initialize everything to start again
    xBall = width/2;
    yBall = height/2;
    rBall= 7.96;
    xspeedB = random(15,20);
    yspeedB = random(15,20);
    xPaddle = 100;
    yPaddle = height/2;
    wPaddle = 80;
    hPaddle = 60;
    xspeedP = 0;
    yspeedP = 0;
    lives = 10;
    message = "Game Over, Press the mouse to start again";
    message2 = "Number of Lives Left = ";
    intro = "Press the mouse to start the game";
    intro2 = "Use the r and l key to move the box across";
    intro3 = "the screen to avoid the ball";
    lost = false;
    start = true;
    file.play();
    loop();
    
  }
}

// this part of the code is used from this website (http://jeffreythompson.org/collision-detection/circle-rect.php)
// to check the touching or overlapping of ball and paddle
boolean BallPaddle (float xBall, float yBall, float radius, float radiusx, float radiusy, float radiusw, float radiush){

//variables to check the edges of the canvas (only used here "local variables")
  float testX = xBall;
  float testY = yBall;

//to check the edges
  if (xBall < radiusx){
    testX = radiusx;
  }else{
    if (xBall > radiusx+radiusw){
      testX = radiusx+radiusw;
    }
  }
  if (yBall < radiusy){         
      testY = radiusy;
    }else{
      if (yBall > radiusy+radiush){
      testY = radiusy+radiush;
    }
  }

//get the distance from closest edges
  float distX = xBall-testX;
  float distY = yBall-testY;
  float distance = sqrt( (distX*distX) + (distY*distY) );

//if the distance is less than the radius, then the overlapping is happening
  if (distance <= radius){
    return true;
  }
  return false;
}
