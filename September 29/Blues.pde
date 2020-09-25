class Blue{
  float x = random(width/2);
  float y = random(height /2);
  float z = random(width/2);
  float v = random(height /2);
  
  
  void display(){
    noStroke();
    push();
    noStroke();
    translate(300, 300);
    fill( 25, 63, 245);
    rect(x,y, 20,20);
    fill(199, 206, 234);
    rect(z,v, 20,20);
    pop();
    
  }
  
}
