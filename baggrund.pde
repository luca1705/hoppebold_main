PImage photo;
PImage photo2;
PImage photo3;


void bg() {
//  image(photo, 0, 0, 800, 800);

background(0,200,255);
noStroke();
  rect(150,100,100,30);
  rect(185, 130, 30,100);
  rect(300,130,50,100);
  rect(350,100,80,30);
  rect(390, 60, 40,20);
  rect(350,150,80,30);
  rect(350,200,80,30);
  rect(500,100,50,130);
  rect(550,100,80,30);
  rect(550,200,80,30);
  //image(photo2, 100, 200, 250, 400);
  //image(photo3, 400, 200, 250, 250);
  stroke(0);
 
}


void importIMG() {
  photo = loadImage("Vaporwave.jpg");
  photo2 = loadImage("Anders.jpg");
  photo3 = loadImage("John.jpg");
}
