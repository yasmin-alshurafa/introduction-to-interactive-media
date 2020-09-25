class Green{
  float x = random(width/2);
  float y = random(height/2);
  float z = random(width/2);
  float v = random(height /2);
  
  void display(){
    noStroke();
    push();
    translate(0, 300);
    fill( 28, 255, 52);
    ellipse(x,y, 20,20);
    fill(206, 219, 207);
    ellipse(z,v, 20,20);
    pop();
    
  }
  
}
