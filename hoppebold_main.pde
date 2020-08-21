float g = 0.1;
int maxBSize = 25;

Ball[] balls = new Ball[50];

void setup() {
  size(800, 800);
  importIMG();
  //set balls
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Ball(new PVector(random(width - maxBSize*3), random(height - maxBSize*3)), new PVector(random(1, 4), random (1, 4)), maxBSize);
  }
}

void draw() {
  clear();
  bg();
  //Draw balls
  for (Ball b : balls) {
    b.move();
    b.col();
    b.display();
  }
}
