//declare my variables
float xPos, yPos;
int size = 100;
boolean circleClicked = false;
float d;

void setup(){

size (600, 600);
xPos = width/2;
yPos = height/2;

}
void draw(){

d = dist(mouseX, mouseY, xPos, yPos);


if (d < size/2){
  //println("insidecircle");
  fill(0);
  //putting another if statement here nests the 2 if statements together
} else {
  fill(255);
}
if(circleClicked){
  background(0 ,255, 0);
}else{
  background (255, 0, 0);
}

if (d < size/2 && mousePressed){
  circleClicked = !circleClicked; // !circleClicked; assigns to opposite
}else{
  circleClicked = false;
}
println(circleClicked);
ellipse(xPos, yPos, size, size);

}

void mousePressed(){
  if(d < size/2 ){
    circleClicked = !circleClicked;
}
}
