class Ball {
  PVector pos, vel;
  float s;

  Ball(PVector position, PVector velocity, float size) {
    pos = position;
    vel = velocity;
    s = size;
  }

  void move() {
    pos.add(vel);
    vel.y += g;

    if (pos.y > height - (s/2 + vel.y * 1.25)|| pos.y < s - vel.y * 1.25) {
      vel.y *=-1;
    }
    if (pos.x > width - (s/2 + vel.x * 1.25) || pos.x < (s/2 - vel.x * 1.25)) {
      vel.x *=-1;
    }
  }


  void col() {
    for (int i = 0; i < balls.length; i++) {
      if (balls[i] != this) {
        if (dist(pos.x, pos.y, balls[i].pos.x, balls[i].pos.y) < s/2 + balls[i].s/2) {
          PVector vTemp = new PVector(vel.x, vel.y);
          
          vel.set(pos.x - balls[i].pos.x, 
                  pos.y - balls[i].pos.y);
          vel.normalize();
          vel.x*= abs(vTemp.x);
          vel.y*= abs(vTemp.y);
        }
      }
    }
  }

  void display() {
    ellipse(pos.x, pos.y, s, s);
  }
}
