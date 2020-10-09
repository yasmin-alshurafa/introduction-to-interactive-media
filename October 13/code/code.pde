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

void setup() {
  size(600, 600);
  backgroundPic = loadImage("ccf.jpg");
  file = new SoundFile(this, "song.mp3");
  file.play();
  for (int i = 0; i < arrayFaces.length; i ++ ) {
    
    arrayFaces[i] = loadImage( "facesMoves" +i+ ".png" );
    
  }
  for (int i = 0; i < arrayFaces1.length; i ++ ) {
    
    arrayFaces1[i] = loadImage( "facesMoves" +i+ ".png" );
  }
}

void draw() {
  image(backgroundPic, 0, 0, 600, 600);
  image(arrayFaces[facesIndex], 70, 120, 200, 150);
  image(arrayFaces1[facesIndex1], 360, 270, 150, 150);
}

void mousePressed() {
  if (mouseX >= 70 && mouseY <= 305) {
    facesIndex = int(random(arrayFaces.length));
  }
  if (mouseX >= 360 && mouseY >= 270) {
    facesIndex1 = int(random(arrayFaces1.length));
  }
}
