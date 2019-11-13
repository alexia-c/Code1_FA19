class Eye {
  float xPos, yPos;
  float xSpeed;

  Eye() {
    xPos = random(0, width);
    yPos = random(0, height);
    xSpeed = random(0.5, 2);
  }

  void drawEye(){
    noStroke();
    fill(77, 87, 255);
    ellipse(xPos, yPos, 50, 40);
     fill(255);
    ellipse(xPos, yPos, 25, 25);
    fill(134, 207, 255);
    ellipse(xPos, yPos, 15, 15);
     fill(0);
    ellipse(xPos, yPos, 5, 5);
    //ellipse(xPos, yPos-10, 20,20);
  }

  void move(){
 
    yPos =  yPos - xSpeed; // or xPos =+ xSpeed;
    if( xPos> width){
    yPos = -50;
    }
  }
}
