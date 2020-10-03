Table table;
String message1= "Price is high";
String message2= "Price is low ";
String message3= "Depth is high";
String message4= "Depth is low";
String message5= "Table is high";
String message6= "Table is low";
String message7= "Carat is high";
String message8= "Carat is low";
String message9= "High price >= $9574, High table > 69mm, High depth > 61%, High carat > 0.33Karat";
void setup() { 
  background (0);
  size(600, 600);
  PFont f = createFont("monaco", 12);
  textFont(f, 10);
  text(message1, 20, 100);
  text(message7, 20, 120);
  text(message2, 20, 400);
  text(message8, 20, 420);
  text(message1, 250, 100);
  text(message3, 250, 120);
  text(message2, 250, 400);
  text(message4, 250, 420);
  text(message1, 500, 100);
  text(message5, 500, 120);
  text(message2, 500, 400);
  text(message6, 500, 420);
  text(message9, 25, 25);
  table = loadTable("diamonds.csv", "header");
}
void draw(){
  
    for (TableRow row : table.rows()){
      float carat = row.getFloat("carat");
      float depth = row.getFloat("depth");
      float table = row.getFloat("table");
      float price = row.getFloat("price");
      if ((price >= 9574) && (carat > 0.33 )){
        push();
        translate(0, 0);
        fill(30, 34, 277);
        ellipse (70,200, 60,60);
        pop();
      }else{
        push();
        translate( 0, 0);
        fill(84, 233, 245);
        ellipse (70,450, 20,20);
        pop();
      }
      if ((price >= 9574) && (depth > 61 )){
        push();
        translate( 0, 0);
        fill(30, 34, 277);
        ellipse (300,200, 60,60);
        pop();
      }else{
        push();
        translate( 0, 0);
        fill(84, 233, 245);
        ellipse (300,450, 20,20);
        pop();
      }
      if ((price >= 9574) && (table > 69 )){
        push();
        translate(0, 0);
        fill(30, 34, 277);
        ellipse (550,200, 60,60);
        pop();
      }else{
        push();
        translate(0, 0);
        fill(84, 233, 245);
        ellipse (550,450, 20,20);
        pop();
      }
 }}
