int xPos, yPos; 
int size = 100; 
boolean circleClicked = false; 
float d; 

void setup(){
size(600, 600); 
xPos = width/2; 
yPos = height/2;
noStroke(); 
}

void draw(){
if (dist(xPos, yPos, mouseX, mouseY)<size/2) {
 fill(255);
  background(0); 
}else{
fill(0);
background(255);
}
////calculate dist between the mouse and the center of the circle 

////if the mouse is inside the circle, fill the circle black 
////otherwise, fill the circle white

//if(circleClicked){


println(circleClicked); 
ellipse(xPos, yPos, size, size); 
}

void mousePressed(){
// toggle the boolean from true / false if the mouse is inside of the circle
}
