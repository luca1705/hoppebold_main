PImage photo;
PImage photo2;
PImage photo3;


void bg() {
//  image(photo, 0, 0, 800, 800);
  image(photo2, 0, 0, 400, 200);
  image(photo3, 400, 0, 400, 200);
}


void importIMG() {
  photo = loadImage("Vaporwave.jpg");
  photo2 = loadImage("Anders.jpg");
  photo3 = loadImage("John.jpg");
}
