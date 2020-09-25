class Orange{
  float x = random(width/2);
  float y = random(height/2);
  float z = random(width/2);
  float v = random(height /2);
  
  void display(){
    noStroke();
    fill(252, 212, 178);
    rect(x,y, 20,20);
    fill( 255, 134, 21);
    rect(z,v, 20,20);
    
  }
  
}
