ArrayList<Bubble> bubbleVariable = new ArrayList<Bubble>(); // creating an array list, "<Bubble>" a generic that references your class
void setup(){
  size(400, 400);
  bubbleVariable = new ArrayList<Bubble>();
  
}

void draw(){
  for(int i =0; i<10; i++){
    bubbles[i].drawBubble();
    bubbbles[i].move();
}

class Bubble{
  float x, y;
  Bubble(){
    x = random(width);
    y= random(height);
  }

void show(){
  ellipse(x, y, 20, 20);
}
}
