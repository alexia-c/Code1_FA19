
int moveX = 0;
int moveY = 200;
float x = 0.5;
void setup(){
  
  size (800, 800);
  frameRate(5);
}


//system variables- mouse x and mouse y

void draw (){

  background(255, 226, 108);
  noStroke();
  float r = random(50, 150);
  float r1 = random(50, 200);
  float r2 = random (100, 150);
  
  
  //sticks
  fill(255, 255, 255);
  rect (400, 300, 10, 200);
  rect (200, 300, 10, 200);
  rect (600, 300, 10, 200);
  
 if (mousePressed) {
    fill (255, 0, 0);
  } 
  else{ 
    fill (0, 0, 255);
}
  //candy
  //fill(124, 151, 255);
  ellipse(405, 280, r , r);
  
  //fill(255, 111, 130);
  ellipse(205, 280, r1 , r1);
  
  //fill(97, 209, 101);
  ellipse(605, 280, r2 , r2);
  
  
  moveX = moveX + 3;
  


  
 
  
  
  //ellipse(mouseX, mouseY, mta, mta);
  
  //ellipse(moveX,moveY, r, r);

  //moveX = moveX + 3;

  //println(r);
  
}
