float g = 0.1;
int maxBSize = 25;

int nballs = 4; 
ArrayList<Ball> balls = new ArrayList<Ball>();

void setup() {
  size(800, 800);
  importIMG();
  ellipseMode(CENTER);

  //set balls
  for (int i = 0; i < nballs; i++) {
    balls.add(new Ball(new PVector(random(width - maxBSize*3), random(maxBSize*3, 400)), new PVector(random(-4, 4), random (-4, 4)), maxBSize));
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

  drawGround();
}

void drawGround() {
  ellipse(width/2, height+100, width, height);
}

void restart() {
  balls = new ArrayList();
  for (int i = 0; i < nballs; i++) {
    balls.add(new Ball(new PVector(random(width - maxBSize*3), random(maxBSize*3, 400)), new PVector(random(-4, 4), random (-4, 4)), maxBSize));
  }
}

void keyPressed() {
  if (key == 'r')
    restart();
  if (key == 'e')
    balls.add(new Ball(new PVector(random(width - maxBSize*3), random(maxBSize*3, 400)), new PVector(random(-4, 4), random (-4, 4)), maxBSize));
}
