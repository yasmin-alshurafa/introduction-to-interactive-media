//Background and Frame Size
size(600, 600);
background(249, 252, 217);

//Dress
strokeWeight(2);
fill(217,252,252);
triangle(width/2, 250, 150, 500, 450, 500);

//Headscarf
fill(0);
ellipse(width/2, 200, 150, 160);

//Head
fill(252,214,156);
ellipse(width/2, 200, 90, 90);

//Eyes (white part)
fill(255,255,255);
ellipse(280, 200, 20, 20);
ellipse(320, 200, 20, 20);

//Eyes (black part)
fill(0);
ellipse(282, 200, 10, 10);
ellipse(322, 200, 10, 10);

//Smile
noFill();
arc(300, 220, 30, 30, 0, radians(180));

//Legs
fill(252,214,156);
strokeWeight(2);
rect(250, 500, 30, 60);
rect(330, 500, 30, 60);

//Arms
strokeWeight(2);
line(275, 325, 255, 380);
line(325, 325, 345, 380);

//Eyebrows
noFill();
strokeWeight(2);
arc(280, 189, 25, 15, radians(180), radians(360));
arc(320, 189, 25, 15, radians(180), radians(360));
