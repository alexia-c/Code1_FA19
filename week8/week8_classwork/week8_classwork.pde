//DATA  : CONSTRUCTOR
//COLOR = RGB
//SPEED   = numeric value or random float.
//HEALTH  n/a
//POSITION  (x,y,xy)

//METHOD = functions object is going to do.
//1. Draw Aliens
//2. Move Aliens
//3. Attack
//4. Death (Something to detect if alien has been hit.)

int screen;

void setup(){
size(600, 600);

}

void draw(){
  switch(screen){
  case 0:
  startScreen();
  break;
  case 1:
  gameScreen();
  //if(lives<0){screen = 2;}
  break;
  case 2:
  gameOver();
  break;
  
  }
}
void mousePressed(){
//first button
if(screen == 0){
if(dist(mouseX, mouseY, width/2, height/2)<25){
screen = 1;
println("buttonclicked!");
}
}
//second button
if(screen == 1){
  if(dist(mouseX, mouseY, 100, 100)< 25){
    screen = 2;
  }
}
}
void keyPressed(){
  if(screen <2)
  screen ++;
}
void startScreen(){
background(0);
textSize(24);
fill(255);
text("welcome to my game, press green button to start", 25, 100, width-25, 100);

fill(0, 255, 0);
ellipse(width/2, height/2, 50, 50);
}

void gameScreen(){
  background(255, 0, 0);
fill(0, 255, 0);
ellipse(100, 100, 50, 50);
}

void gameOver(){
}
