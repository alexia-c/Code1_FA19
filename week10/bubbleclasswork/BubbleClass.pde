class bubble {
  //data you need 
  float x, y;
  float d, d1;

  //constructor
  bubble() {
    x = random(width);
    y= random(height);
    d= 1;
    d1=2;
  }

  void drawBubble() {
    ellipse(x, y, 20, 20);
    fill(255);
  }

  void move() {

    x = x+d;
    y = y+ d1;

    if (x > width) {
      d=-1;
    } else if (x < 0) {
      d=1;
    }
    if (y > height) {
      d1=-1;
    } else if (y < 0) {
      d1=1;
    }
  }
}
