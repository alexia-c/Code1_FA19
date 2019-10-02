int mta = 200;
int moveX = 0;
int moveY = 200;
float x = 0.5;
String hello = "Hello";
void setup(){
  
  size (800, 800);
}


//system variables- mouse x and mouse y

void draw (){
  background(0);
  //ellipse(mouseX, mouseY, mta, mta);
  ellipse(mouseX, mouseY, 200, mouseY);
 
  ellipse(moveX,moveY, mta, mta);
  
  mta = mta + 1;
  moveX = moveX + 1;
  moveY = moveY + 1;
  
  textSize(mouseX);
  //text("Hello Class!", 50, 300);
  //String hello = "Hello"; 
  text(hello, 50, 300);
  
  
}
  
