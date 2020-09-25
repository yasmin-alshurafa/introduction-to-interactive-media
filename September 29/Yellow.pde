class Yellow{
  float x = random(width/2);
  float y = random(height/2);
  float z = random(width/2);
  float v = random(height /2);
  
  void display(){
    noStroke();
    push();
    translate(300, 0);
    fill( 235, 255, 28);
    ellipse(x,y, 20,20);
    fill(250, 249, 207);
    ellipse(z,v, 20,20);
    pop();
    
  }
  
}
