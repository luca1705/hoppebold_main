PImage photo;
PImage photo2;
PImage photo3;


void bg() {


  image(photo, 0, 0, 800, 800);
  image(photo2, 100, 100, 100, 100);
  image(photo3, 600, 100, 100, 100);
}


void importIMG() {

  photo = loadImage("Vaporwave.jpg");
  photo2 = loadImage("Anders.jpg");
  photo3 = loadImage("John.jpg");
}
