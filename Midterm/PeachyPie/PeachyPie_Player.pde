class Basket{
  float xPos, yPos; 
  float xSpeed, ySpeed; 
  
  int size; 
  
  PImage img;
  
  Basket(){
    xPos = width/2; 
    yPos = height/2; 
    size = 25; 
    img = loadImage("basket_01.png");
  }
  
  void move(){

      xPos += xSpeed; 
      
      if(keyPressed){
      if (keyCode == LEFT){
          xSpeed = -5; 
        }else if(keyCode == RIGHT){
          xSpeed = 5; 
        }
      }else{
        xSpeed = 0; 
        ySpeed = 0; 
      }
  }
  
  void checkBoundaries(){
     if(xPos > width){
        xPos = 0; 
      }
     if(xPos < 0){
        xPos = width; 
      }
  }
  
  void drawBasket(){
      image( img, xPos, yPos + 125, 95, 80); 
      noStroke();
      fill(0,0);
      rectMode(CENTER);
      rect(xPos, yPos + 140, 95, 20);
  }
}
