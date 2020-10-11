/*
Yasmin Alshurafa (9-10-2020)
Concept: a song of the cartoon should be playing once when the code is run and when mouse is clicked on the face expression it changes.
*/


import processing.sound.*;
SoundFile file;
int numFaces = 8;
int facesIndex = 0;
int numFaces1 = 8;
int facesIndex1 = 0;
PImage backgroundPic;
PImage[] arrayFaces = new PImage[numFaces]; 
PImage[] arrayFaces1 = new PImage[numFaces1]; 
float offset = 0;
float easing = 0.05;
PImage effect;

void setup() {
  size(600, 600);
  backgroundPic = loadImage("ccf.jpg");
  effect = loadImage("buuble.jpg");
  
  //excess(load) this song
  file = new SoundFile(this, "song.mp3");
  file.play();
  
  //loop for excessing all images in the array
  for (int i = 0; i < arrayFaces.length; i ++ ) {
    
    arrayFaces[i] = loadImage( "facesMoves" +i+ ".png" );
    
  }
  for (int i = 0; i < arrayFaces1.length; i ++ ) {
    
    arrayFaces1[i] = loadImage( "facesMoves" +i+ ".png" );
  }
}

void draw() {
  //print background image
  image(backgroundPic, 0, 0, 600, 600);
  
  //print the transparent image for effect
  float dx = (mouseX-effect.width/2) - offset;
  offset += dx * easing; 
  tint(255, 127);
  image(effect, offset, 0, 300 ,600);
  
  //print the changing faces
  image(arrayFaces[facesIndex], 70, 120, 200, 150);
  image(arrayFaces1[facesIndex1], 360, 270, 150, 150);
}

//use mousepress for changing face images
void mousePressed() {
  if (mouseX >= 70 && mouseY <= 305) {
    facesIndex = int(random(arrayFaces.length));
  }
  if (mouseX >= 360 && mouseY >= 270) {
    facesIndex1 = int(random(arrayFaces1.length));
  }
}
