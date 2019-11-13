int mta = 200;
int moveX = 0;
int moveY = 200;
float x = 0.5;
String hello = "Hello";
void setup(){
  
  size (800, 800);
  frameRate(7);
}


//system variables- mouse x and mouse y

void draw (){
  background(0);
  float r =random(50,200);
  
  
  ellipse(mouseX, mouseY, mta, mta);
  
  ellipse(moveX,moveY, r, r);

  moveX = moveX + 3;

  println(r);
  
}
  
