
Orange[] oranges = new Orange[50];
Blue[] blues = new Blue[50];
Yellow[] yellows = new Yellow[50];
Green[] greens = new Green[50];

void setup(){
  size(600,600);
  for (int i = 0; i < oranges.length; i++){
  oranges [i]= new Orange();
  for (int e = 0; e < blues.length; e++){
  blues [i]= new Blue();
  for (int w = 0; w < yellows.length; w++){
  yellows [w]= new Yellow();
  for (int k = 0; k < greens.length; k++){
  greens [k]= new Green();
}
}
}
  }}
void draw(){
  background (255);
  for (int i = 0; i < oranges.length; i++){
    oranges[i].display();
  for (int e = 0; e < blues.length; e++){
    blues[e].display();
  for (int w = 0; w < yellows.length; w++){
    yellows[w].display();
  for (int k = 0; k < greens.length; k++){
    greens[k].display();
}
}
}
}
}
