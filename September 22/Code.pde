void setup() {
  size(600, 600);
  background(0);
  int CircleLine0 = 50;
  int CircleLine1 = 50;
  int CircleLine2 = 50;
  int CircleLine3 = 50;
  int CircleBLine0 = 50;
  int CircleBLine1 = 50;
  int CircleBLine2 = 50;
  int CircleBLine3 = 50;
  int CircleSLine0 = 50;
  int CircleSLine1 = 50;
  int CircleSLine2 = 50;
  int CircleSLine3 = 50;
  
while (CircleSLine0 < width) {
    fill(250, 58, 238);
    ellipse(CircleSLine0, 300, 30, 30);
    CircleSLine0 = CircleSLine0 + 50;
  }
  while (CircleSLine3 < width) {
    ellipse(CircleSLine3, 300, 30, 30);
    CircleSLine3 = CircleSLine3 + 50;
  }
  while (CircleSLine1 < height) {
    ellipse(300, CircleSLine1, 30, 30);
    CircleSLine1 = CircleSLine1 + 50;
  }
  while (CircleSLine2 < height) {
    ellipse(300, CircleSLine2, 30, 30);
    CircleSLine2 = CircleSLine2 + 50;
  }
  
  while (CircleLine0 < width) {
    fill(173, 255, 249);
    ellipse(CircleLine0, 50, 40, 40);
    CircleLine0 = CircleLine0 + 50;
  }
  while (CircleLine3 < width) {
    ellipse(CircleLine3, 550, 40, 40);
    CircleLine3 = CircleLine3 + 50;
  }
  while (CircleLine1 < height) {
    ellipse(50, CircleLine1, 40, 40);
    CircleLine1 = CircleLine1 + 50;
  }
  while (CircleLine2 < height) {
    ellipse(550, CircleLine2, 40, 40);
    CircleLine2 = CircleLine2 + 50;
  }
while (CircleBLine0 < width) {
    fill(255, 233, 173);
    ellipse(CircleBLine0, 150, 50, 50);
    CircleBLine0 = CircleBLine0 + 50;
  }
  while (CircleBLine3 < width) {
    ellipse(CircleBLine3, 450, 50, 50);
    CircleBLine3 = CircleBLine3 + 50;
  }
  while (CircleBLine1 < height) {
    ellipse(150, CircleBLine1, 50, 50);
    CircleBLine1 = CircleBLine1 + 50;
  }
  while (CircleBLine2 < height) {
    ellipse(450, CircleBLine2, 50, 50);
    CircleBLine2 = CircleBLine2 + 50;
  }
}
void draw(){
stroke(255);
noFill();
arc(225, 250, 30, 30, 0, radians(180));
stroke(255);
noFill();
arc(375, 250, 30, 30, 0, radians(180));
stroke(255);
strokeWeight(7);
noFill();
arc(300, 370, 80, 80, 0, radians(180));
}
