/*
Yasmin Alshurafa (6-10-2020)
Source of data: https://www.kaggle.com/shivam2503/diamonds
Concept: price changes when the depth, table, and carats change
*/


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
String message10= "N/A";

void setup() { 

  background (0);
  size(600, 600);
  PFont f = createFont("monaco", 12);
  textFont(f, 10);
  text(message1, 20, 70);
  text(message7, 20, 90);
  text(message2, 20, 250);
  text(message8, 20, 270);
  text(message2, 20, 350);
  text(message7, 20, 370);
  text(message1, 250, 70);
  text(message3, 250, 90);
  text(message2, 250, 350);
  text(message3, 250, 370);
  text(message2, 250, 250);
  text(message4, 250, 270);
  text(message1, 500, 70);
  text(message5, 500, 90);
  text(message2, 500, 350);
  text(message5, 500, 370);
  text(message2, 500, 250);
  text(message6, 500, 270);
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
        fill(30, 34, 277);
        ellipse (70,150, 60,60);
        }else{
           fill(84, 233, 245);
           ellipse (70,300, 20,20);
        }
      if ((price >= 9574) && (depth > 61 )){
        fill(30, 34, 277);
        ellipse (300,150, 60,60);
        }else{
           fill(84, 233, 245);
           ellipse (300,300, 20,20);
        }
      if ((price >= 9574) && (table > 69 )){
        fill(30, 34, 277);
        ellipse (550,150, 60,60);
        }else{
           fill(84, 233, 245);
           ellipse (550,300, 20,20);
        }
      if ((price <= 9574) && (carat > 0.33 )){
        fill(30, 34, 277);
        ellipse (70,150, 60,60);
        }else{
          PFont f = createFont("monaco", 12);
          textFont(f, 10);
          text(message10, 50, 400);
        }
      if ((price <= 9574) && (table > 69 )){
        fill(30, 34, 277);
        ellipse (70,150, 60,60);
        }else{
          PFont f = createFont("monaco", 12);
          textFont(f, 10);
          text(message10, 550, 400);
        }
      if ((price <= 9574) && (depth > 61 )){
        fill(30, 34, 277);
        ellipse (300,150, 60,60);
        }else{
          PFont f = createFont("monaco", 12);
          textFont(f, 10);
          text(message10, 300, 400);
      }
    }
 }
