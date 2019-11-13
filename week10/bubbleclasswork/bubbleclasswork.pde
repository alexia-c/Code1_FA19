// setup n stuff
//bubble x = new bubble(); // 
bubble [] BubblesArray = new bubble [10]; 

int i;
void setup() {
  size(400, 400);

  for (int i = 0; i<10; i++) {
    BubblesArray[i] = new bubble(); // initialize
  }
}

void draw() {
  for (int i = 0; i<10; i++) {
    BubblesArray[i].drawBubble();
    BubblesArray[i].move();
  }
  //x.drawBubble();
}
