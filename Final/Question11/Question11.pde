int size = 50; 
float xPos = size/2, yPos; 
int xDirection = 1; 
float theta; 
float ampl; 

void setup(){
size(800, 600); 

}
void draw(){
background(0); 

theta += .05; 

xPos += xDirection; 
  if(xPos >= 775){
    xDirection = -1; 
  }
  if(xPos <= 25){
    xDirection = 1; 
  }
xPos += xDirection; 

yPos = height/2 + sin(theta)*size; 

fill(255); 
ellipse(xPos, yPos, size, size); 
}
