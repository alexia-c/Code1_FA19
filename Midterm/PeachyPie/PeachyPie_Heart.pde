class Peachy{
    //data 
    float xPos, yPos; 
    float ySpeed; 
    
    PImage img;
    
    //constructor
    Peachy(float _xPos, float _yPos){
      xPos = _xPos; 
      yPos = _yPos; 
      ySpeed = random (0.5, 2);
      
      img = loadImage("peachy_01.png");
    }
    
    void drawPeachy(){
      image( img, xPos, yPos-10, 30, 30); 
      fill(0,0);
      rect(xPos - 1, yPos + 10, 30, 10);
      
}
    void move(){
      yPos = yPos + ySpeed; 
      if(yPos > height){
        yPos = -10; 
      }
    }
}
