float xPos = 100, yPos = 100;
float xSpeed, ySpeed;
int size = 65;
float distance;
boolean withinshape = false;

void setup(){
  size(600, 600);
  xSpeed = random(2, 5);
  ySpeed = random(-2, 2);
}

void draw(){
  int b, g;
  
  b = int(map(yPos, 0, height, 255, 190));
  g = int(map(yPos, 0, height, 190, 190));
  
  background(255, b, g);
  
  xPos += xSpeed;
  yPos += ySpeed;
  
  distance = dist(mouseX, mouseY, xPos, yPos);
  
  println(distance);
 
  if(xPos > width-size/2 || xPos < size/2){
    xSpeed = -xSpeed;
  }
  if(yPos > height-size/2 || yPos < size/2){
    ySpeed = -ySpeed;
  }   
   ellipse(xPos, yPos, size, size);
  noStroke();
  
  if (distance < size/2)
  {
    withinshape = true;
  }else{
    withinshape = false;
  }
  
  if (withinshape == true)
  {
    println("true");
  }else{
    println("false");
  }
}

  void mousePressed(){
    if (distance < size/2)
    {
      xPos = random(100,500);
      yPos = random(100, 500);
    }
  }
